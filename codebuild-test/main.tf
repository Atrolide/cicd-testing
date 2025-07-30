module "github_connection" {
  source        = "./modules/aws_codeconnections_connection"
  name          = "github-connection"
  provider_type = "GitHub"
}

module "codebuild_project" {
  source                      = "./modules/aws_codebuild"
  name                        = "test-codebuild-project"
  image                       = "aws/codebuild/amazonlinux2-x86_64-standard:4.0"
  type                        = "LINUX_CONTAINER"
  image_pull_credentials_type = "CODEBUILD"
  source_location             = "https://github.com/Atrolide/cicd-testing.git"
  auth_resource               = module.github_connection.arn
  service_role                = aws_iam_role.codebuild_service_role.arn
}




# TODO: Move to separate module, refine, least privilege

resource "aws_iam_role" "codebuild_service_role" {
  name = "codebuild-service-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "codebuild.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach AWS managed policy for CodeBuild
resource "aws_iam_role_policy_attachment" "codebuild_policy" {
  role       = aws_iam_role.codebuild_service_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

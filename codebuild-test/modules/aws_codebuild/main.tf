resource "aws_codebuild_project" "this" {
  name         = var.name
  description  = var.description
  service_role = var.service_role
  artifacts {
    type = var.artifacts_type
  }
  environment {
    compute_type                = var.compute_type
    image                       = var.image
    type                        = var.type
    image_pull_credentials_type = var.image_pull_credentials_type
  }

  source {
    type     = "GITHUB"
    location = var.source_location
    auth {
      type     = "CODECONNECTIONS"
      resource = var.auth_resource
    }
  }
}

resource "aws_codebuild_webhook" "this" {
  project_name = aws_codebuild_project.this.name
  build_type   = "BUILD"
  filter_group {
    filter {
      type    = "EVENT"
      pattern = "WORKFLOW_JOB_QUEUED"
    }
  }
}

resource "aws_codebuild_source_credential" "example" {
  auth_type   = "CODECONNECTIONS"
  server_type = "GITHUB"
  token       = var.auth_resource
}

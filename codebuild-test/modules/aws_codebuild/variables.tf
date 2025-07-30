variable "name" {
  type        = string
  description = "Name of the CodeBuild project"
}
variable "description" {
  type        = string
  description = "Description of the CodeBuild project"
  default     = null
}
variable "service_role" {
  type        = string
  description = "IAM role ARN for the CodeBuild project"
}
variable "artifacts_type" {
  type        = string
  description = "(Required) Build output artifact's type. Valid values: CODEPIPELINE, NO_ARTIFACTS, S3."
  default     = "NO_ARTIFACTS"
}
variable "compute_type" {
  type        = string
  description = "(Required) Information about the compute resources the build project will use. Valid values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB."
  default     = "BUILD_GENERAL1_SMALL"
}
variable "image" {
  type        = string
  description = "(Required) Docker image to use for this build project(e.g. aws/codebuild/amazonlinux2-x86_64-standard:4.0)."
}
variable "type" {
  type        = string
  description = "(Required) Type of build environment to use for related builds."
  default     = "LINUX_CONTAINER"
}
variable "image_pull_credentials_type" {
  type        = string
  description = "(Optional) Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE_ROLE. When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to CODEBUILD."
}
variable "source_location" {
  type        = string
  description = "(Optional) Location of the source code from git or s3."
}
variable "auth_resource" {
  type        = string
  description = " (Required) The ARN of the resource to use for authentication. For type CODECONNECTIONS this should be an AWS CodeStar Connection. For type SECRETS_MANAGER this should be an AWS Secrets Manager secret."
}

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_artifacts_type"></a> [artifacts\_type](#input\_artifacts\_type) | (Required) Build output artifact's type. Valid values: CODEPIPELINE, NO\_ARTIFACTS, S3. | `string` | `"NO_ARTIFACTS"` | no |
| <a name="input_compute_type"></a> [compute\_type](#input\_compute\_type) | (Required) Information about the compute resources the build project will use. Valid values: BUILD\_GENERAL1\_SMALL, BUILD\_GENERAL1\_MEDIUM, BUILD\_GENERAL1\_LARGE, BUILD\_GENERAL1\_XLARGE, BUILD\_GENERAL1\_2XLARGE, BUILD\_LAMBDA\_1GB, BUILD\_LAMBDA\_2GB, BUILD\_LAMBDA\_4GB, BUILD\_LAMBDA\_8GB, BUILD\_LAMBDA\_10GB. | `string` | `"BUILD_GENERAL1_SMALL"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the CodeBuild project | `string` | `null` | no |
| <a name="input_image"></a> [image](#input\_image) | (Required) Docker image to use for this build project(e.g. aws/codebuild/amazonlinux2-x86\_64-standard:4.0). | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the CodeBuild project | `string` | n/a | yes |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | IAM role ARN for the CodeBuild project | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | (Required) Type of build environment to use for related builds. | `string` | `"LINUX_CONTAINER"` | no |

## Outputs

No outputs.

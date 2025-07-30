resource "aws_codeconnections_connection" "this" {
  name          = var.name
  provider_type = var.provider_type
}

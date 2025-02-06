resource "null_resource" "validate_workspace" {
  lifecycle {
    precondition {
      condition     = contains(["dev", "stg", "prod"], terraform.workspace)
      error_message = "Invalid environment workspace! Your workspace must be one of: dev, stg or prd."
    }
  }
}
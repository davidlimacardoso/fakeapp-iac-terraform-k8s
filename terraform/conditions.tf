resource "null_resource" "validate_workspace" {
  lifecycle {
    precondition {
      condition     = contains(["dev", "stg", "prd"], terraform.workspace)
      error_message = "Invalid environment workspace! Your workspace must be one of: dev, stg or prd."
    }
  }
}
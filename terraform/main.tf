provider "aws" {
  # if don't specify profile, it will use default
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/terraform-role"
    session_name = "tf"
  }
  var = var.region
  version = "~4.0.0"
}

provider "aws" {
  # if don't specify profile, it will use default
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/tfrole"
    session_name = "tf"
  }
  region = var.region
}

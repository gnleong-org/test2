terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.11.0"
    }
  }
}

provider "aws" {
  # if don't specify profile, it will use default
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/tftest-backup-role"
    session_name = "tf"
    external_id  = var.external_id
  }
  region = var.region
}

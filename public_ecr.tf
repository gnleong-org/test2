module "my_ecr" {
  source  = "lgallard/ecr/aws"
  version = "0.4.2"
  # insert the 5 required variables here
  name                 = "my_ecr"
  scan_on_push         = true
  timeouts_delete      = "20m"
  image_tag_mutability = "IMMUTABLE"
  policy               = data.aws_iam_policy_document.ecr_policy_doc.json
  encryption_type      = "KMS"
}

data "aws_iam_policy_document" "ecr_policy_doc" {
  statement {
    sid     = "account owner"
    effect  = "Allow"
    actions = ["ecr:*"]
    principals {
      identifiers = ["arn:aws:iam::${var.account_id}:root"]
      type        = "AWS"
    }
  }
}

resource "aws_ecr_repository" "foo" {
  name = "bar"
}
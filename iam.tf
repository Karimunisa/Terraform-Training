# data "aws_iam_policy_document" "assume_role" {
#   statement {
#     effect = "Allow"

#     principals {
#       type        = "Service"
#       identifiers = ["lambda.amazonaws.com"]
#     }

#     actions = ["sts:AssumeRole"]
#   }
# }

# resource "aws_iam_role" "role" {
#   name               = "terraform-role"
#   assume_role_policy = data.aws_iam_policy_document.assume_role.json
# }

# data "aws_iam_policy_document" "policy" {
#   statement {
#     effect    = "Allow"
#     actions   = ["s3:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "policy" {
#   name        = "terraform-policy"
#   description = "An example policy"
#   policy      = data.aws_iam_policy_document.policy.json
# }

# resource "aws_iam_policy_attachment" "example-attach" {
#   name       = "terraform-attachment"
#   roles      = [aws_iam_role.role.name]
#   policy_arn = aws_iam_policy.policy.arn
# }
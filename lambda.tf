

# data "archive_file" "example" {
#   type        = "zip"
#   source_dir  = "${var.lambda_path}/TestingFunction"
#   output_path = "${var.lambda_path}/TestingFunction.zip"
# }

# # Lambda function
# resource "aws_lambda_function" "terraform" {
#   filename      = data.archive_file.example.output_path
#   function_name = "example_lambda_function"
#   role          = aws_iam_role.role.arn
#   handler       = "lambda_function.lambda_handler"
#   code_sha256   = data.archive_file.example.output_base64sha256

#   runtime = "python3.14"
# }
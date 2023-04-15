resource "aws_iam_role" "lambda_role" {
  assume_role_policy = data.aws_iam_policy_document.AWSLambdaTrustPolicy.json
  name = "${var.function_name}-iam-role-lambda"
}

resource "aws_lambda_function" "serverless-api" {
  filename = var.lambda_zip
  function_name = var.function_name
  role = aws_iam_role.lambda_role.arn
  handler = var.handler
  runtime = var.runtime
}

module "labels" {
  source = "cloudposse/label/null"

  context = var.context
}
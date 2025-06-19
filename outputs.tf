output "api_endpoint" {
  value = module.apigateway.api_endpoint
}

output "api_id" {
  value = module.apigateway.api_id
}

output "user_pool_id" {
  value = module.cognito.user_pool_id
}

output "user_pool_arn" {
  value = module.cognito.user_pool_arn
}

output "client_id" {
  value = module.cognito.client_id
}

output "role_arn" {
  value = module.lambda.role_arn
}

output "lambda_name" {
  value = module.lambda.lambda_name
}

output "lambda_function_arn" {
  value = module.lambda.lambda_function_arn
}

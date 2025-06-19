module "lambda" {
  source              = "./modules/lambda"
  lambda_zip_path     = var.lambda_zip_path
  function_name       = var.function_name
  handler             = var.handler
  runtime             = var.runtime
  environment_variables = var.environment_variables
  lambda_role_name    = var.lambda_role_name
}

module "apigateway" {
  source              = "./modules/apigateway"
  lambda_function_arn = module.lambda.lambda_function_arn
}

module "cognito" {
  source           = "./modules/cognito"
  user_pool_name   = var.user_pool_name
  app_client_name  = var.app_client_name
  domain_prefix    = var.domain_prefix
  callback_urls    = [module.apigateway.api_endpoint]
  logout_urls      = [module.apigateway.api_endpoint]
}

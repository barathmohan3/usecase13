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
  source                     = "./modules/apigateway"
  lambda_function_arn        = module.lambda.lambda_function_arn
  cognito_client_id          = module.cognito.client_id
  domain_prefix              = var.domain_prefix 
  cognito_user_pool_domain   = module.cognito.domain_prefix
  user_pool_id               = module.cognito.user_pool_id
  aws_region                 = var.aws_region
}


module "cognito" {
  source           = "./modules/cognito"
  user_pool_name   = var.user_pool_name
  app_client_name  = var.app_client_name
  domain_prefix    = var.domain_prefix
  api_endpoint    = [module.apigateway.api_endpoint]
  default_user_username = "bmware"
  default_user_email    = "barathmohansiva3@gmail.com"
  default_user_password = "Password@123"

}

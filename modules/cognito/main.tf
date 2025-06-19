resource "aws_cognito_user_pool" "this" {
  name = var.user_pool_name
}

resource "aws_cognito_user_pool_client" "client" {
  name         = var.app_client_name
  user_pool_id = aws_cognito_user_pool.this.id

  generate_secret     = false
  allowed_oauth_flows = ["code"]
  allowed_oauth_scopes = [
    "openid",
    "email",
    "profile",
    "aws.cognito.signin.user.admin"
  ]
  supported_identity_providers = ["COGNITO"]

  callback_urls = var.api_endpoint
  

  explicit_auth_flows = [
    "ALLOW_USER_PASSWORD_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH"
  ]

  allowed_oauth_flows_user_pool_client = true
}

resource "aws_cognito_user_pool_domain" "domain" {
  domain       = var.domain_prefix
  user_pool_id = aws_cognito_user_pool.this.id
}

resource "aws_cognito_user" "default_user" {
  user_pool_id = aws_cognito_user_pool.this.id
  username     = var.default_user_username

  attributes = {
    email = var.default_user_email
  }

  temporary_password = var.default_user_password
  force_alias_creation = false
  message_action       = "SUPPRESS" # suppress sending email/SMS
}


variable "user_pool_name" {
  type = string
}

variable "app_client_name" {
  type = string
}

variable "domain_prefix" {
  type = string
}

variable "api_endpoint" {
type = list(string)
}

variable "default_user_username" {
  type = string
}

variable "default_user_email" {
  type = string
}

variable "default_user_password" {
  type = string
}


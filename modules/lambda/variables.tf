variable "lambda_zip_path" {
  type = string
}

variable "function_name" {
  type = string
}

variable "handler" {
  type = string
}

variable "runtime" {
  type = string
}

variable "environment_variables" {
  type = map(string)
}

variable "lambda_role_name" {
  type = string
}

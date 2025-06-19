## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_apigateway"></a> [apigateway](#module\_apigateway) | ./modules/apigateway | n/a |
| <a name="module_cognito"></a> [cognito](#module\_cognito) | ./modules/cognito | n/a |
| <a name="module_lambda"></a> [lambda](#module\_lambda) | ./modules/lambda | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_client_name"></a> [app\_client\_name](#input\_app\_client\_name) | n/a | `string` | `"hello_app_client"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region | `string` | `"us-east-1"` | no |
| <a name="input_domain_prefix"></a> [domain\_prefix](#input\_domain\_prefix) | n/a | `string` | `"firstexample"` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | n/a | `map(string)` | `{}` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | n/a | `string` | `"lambda_hello"` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | n/a | `string` | `"lambda_function.lambda_handler"` | no |
| <a name="input_lambda_role_name"></a> [lambda\_role\_name](#input\_lambda\_role\_name) | n/a | `string` | `"lambda_role"` | no |
| <a name="input_lambda_zip_path"></a> [lambda\_zip\_path](#input\_lambda\_zip\_path) | n/a | `string` | `"./lambda_function.zip"` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | n/a | `string` | `"python3.8"` | no |
| <a name="input_user_pool_name"></a> [user\_pool\_name](#input\_user\_pool\_name) | n/a | `string` | `"hello_user_pool"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_endpoint"></a> [api\_endpoint](#output\_api\_endpoint) | n/a |
| <a name="output_api_id"></a> [api\_id](#output\_api\_id) | n/a |
| <a name="output_client_id"></a> [client\_id](#output\_client\_id) | n/a |
| <a name="output_lambda_function_arn"></a> [lambda\_function\_arn](#output\_lambda\_function\_arn) | n/a |
| <a name="output_lambda_name"></a> [lambda\_name](#output\_lambda\_name) | n/a |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | n/a |
| <a name="output_user_pool_arn"></a> [user\_pool\_arn](#output\_user\_pool\_arn) | n/a |
| <a name="output_user_pool_id"></a> [user\_pool\_id](#output\_user\_pool\_id) | n/a |

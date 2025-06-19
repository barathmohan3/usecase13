package main

deny[msg] {
  some i
  input.resource_changes[i].type == "aws_cognito_user_pool_client"

  urls := input.resource_changes[i].change.after.callback_urls
  not secure_urls(urls)

  msg = sprintf("App client '%s' must have HTTPS callback URLs only.", [input.resource_changes[i].address])
}

secure_urls(urls) {
  not some i
  startswith(urls[i], "http://")
}

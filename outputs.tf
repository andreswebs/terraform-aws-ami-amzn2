output "ami" {
  value     = data.aws_ssm_parameter.amzn2
  sensitive = true
}

output "ami_id" {
  value = nonsensitive(data.aws_ssm_parameter.amzn2.value)
}

output "ami" {
  description = "SSM parameter resource containing the AMI data"
  value     = data.aws_ssm_parameter.amzn2
  sensitive = true
}

output "ami_id" {
  description = "AMI ID"
  value = nonsensitive(data.aws_ssm_parameter.amzn2.value)
}

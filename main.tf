/**
* Fetch the most recent Amazon Linux 2 AMI.
*/

locals {
  #https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-public-parameters-ami.html
  parameter_path = "/aws/service/ami-amazon-linux-latest"
  minimal        = var.minimal ? "minimal-" : ""
  name           = "amzn2-ami-${local.minimal}${var.virt_type}-${var.arch}-${var.storage_type}"
  parameter_name = "${local.parameter_path}/${local.name}"
}

data "aws_ssm_parameter" "amzn2" {
  name = local.parameter_name
}


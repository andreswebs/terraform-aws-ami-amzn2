module "amzn2_latest" {
  source  = "github.com/andreswebs/terraform-aws-ami-amzn2"
}

locals {
  ami_id = module.amzn2_latest.ami_id
}

## --> use `local.ami_id
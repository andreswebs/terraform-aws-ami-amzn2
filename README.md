# terraform-aws-ami-amzn2

Fetch the most recent Amazon Linux 2 AMI.

[//]: # (BEGIN_TF_DOCS)


## Usage

Example:

```hcl
module "amzn2_latest" {
  source  = "github.com/andreswebs/terraform-aws-ami-amzn2"
}

locals {
  ami_id = module.amzn2_latest.ami_id
}

## --> use `local.ami_id
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arch"></a> [arch](#input\_arch) | Processor architecture | `string` | `"x86_64"` | no |
| <a name="input_minimal"></a> [minimal](#input\_minimal) | Use minimal? | `bool` | `false` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | AMI storage type | `string` | `"gp2"` | no |
| <a name="input_virt_type"></a> [virt\_type](#input\_virt\_type) | Virtualization type | `string` | `"hvm"` | no |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami"></a> [ami](#output\_ami) | SSM parameter resource containing the AMI data |
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | AMI ID |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.50 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.50 |

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.amzn2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

[//]: # (END_TF_DOCS)

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).

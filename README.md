# terraform-aws-ami-amzn2

[//]: # (BEGIN_TF_DOCS)
Fetch the most recent Ubuntu 20.04 AMI by default.

## Usage

Example:

```hcl
module "ubuntu_20_04_latest" {
  source  = "github.com/andreswebs/terraform-aws-ami-ubuntu"
}

locals {
  ami_id = module.ami_ubuntu_20_04_latest.ami.image_id
}

## --> use `local.ami_id
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_slug"></a> [ami\_slug](#input\_ami\_slug) | Slug to search | `string` | `"ubuntu-focal-20.04"` | no |
| <a name="input_arch"></a> [arch](#input\_arch) | Processor architecture | `string` | `"amd64"` | no |
| <a name="input_most_recent"></a> [most\_recent](#input\_most\_recent) | Use the most recent? | `bool` | `true` | no |
| <a name="input_owners"></a> [owners](#input\_owners) | List of AMI owner AWS account IDs to search | `list(string)` | <pre>[<br>  "099720109477"<br>]</pre> | no |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami"></a> [ami](#output\_ami) | The AWS AMI resource |
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | AMI ID |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.50.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.50.0 |

## Resources

| Name | Type |
|------|------|
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

[//]: # (END_TF_DOCS)

## Authors

**Andre Silva** - [@andreswebs](https://github.com/andreswebs)

## License

This project is licensed under the [Unlicense](UNLICENSE.md).

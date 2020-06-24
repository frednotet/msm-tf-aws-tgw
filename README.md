# msm-tf-aws-tgw

A Terraform module for setting up a Transit Gateway on AWS. Due to limitations, the module is NOT dynamic and supports the special requirements for one personal project: msm.

Note that this module assumes the RAM Sharing with AWS Organizations is enabled.

Also, the TGW could take a little bit of time before being shared. This may lead to this error: `Error: error creating EC2 Transit Gateway VPC Attachment`. Just retry when the sharing is validated.

## Usage


## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6, < 0.14 |
| aws | ~> 2.57 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.57 |
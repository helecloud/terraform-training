# Terraform Compliance Tests

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | AMI of image | `string` | `"ami-0c3f128b7298d29b9"` | no |
| instance\_type | EC2 instance type | `string` | `"t2.small"` | no |
| project\_tags | n/a | `map(string)` | <pre>{<br>  "CostCenter": "0001",<br>  "Name": "terraform-testing",<br>  "application": "Will Hall",<br>  "environment": "uat",<br>  "role": "Testing"<br>}</pre> | no |
| region | n/a | `string` | `"eu-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ip\_address | External IP for Elastic IP |

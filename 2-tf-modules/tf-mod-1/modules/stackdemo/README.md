# StackDemo Module

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami | AMI of image | string | `"ami-0c3f128b7298d29b9"` | no |
| instance\_type | EC2 instance type | string | `"t2.small"` | no |
| project\_tags |  | map | `<map>` | no |
| region |  | string | `"eu-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ip\_address | External IP for Elastic IP |

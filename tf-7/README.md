# TF-7

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| tag\_bucket\_environment | The Environment tag to set for the S3 Bucket. | string | `"test"` | no |
| tag\_bucket\_name | The Name tag to set for the S3 Bucket. | string | `"terratest"` | no |
| with\_policy | If set to `true`, the bucket will be created with a bucket policy. | string | `"true"` | no |
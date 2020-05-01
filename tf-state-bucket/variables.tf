variable "with_policy" {
  description = "If set to `true`, the bucket will be created with a bucket policy."
  default     = true
}

variable "tag_bucket_name" {
  description = "The Name tag to set for the S3 Bucket."
  default     = "terratest"
}

variable "tag_bucket_environment" {
  description = "The Environment tag to set for the S3 Bucket."
  default     = "test"
}

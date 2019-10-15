variable "region" {
  type    = "string"
  default = "eu-west-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.small"
}

variable "project_tags" {
  type = "map"
  default = {
    Name       = "terraform-layers"
    Owner      = "Will Hall"
    Purpose    = "Testing"
    CostCenter = "0001"
  }
}


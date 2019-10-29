variable "region" {
  type    = "string"
  default = "eu-west-2"
}

variable "ami" {
  description = "AMI of image"
  default     = "ami-0c3f128b7298d29b9" # eu-west-2 Ubuntu-18.04"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.small"
}

variable "project_tags" {
  description = "Project tags to be used to track costs."
  type = "map"
  default = {
    Name       = "Instance"
    Owner      = "Will Hall"
    Purpose    = "Testing"
    CostCenter = "0001"
  }
}

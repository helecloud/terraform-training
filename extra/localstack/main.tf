provider "aws" {
  region                      = "eu-west-2"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  version                     = "~> 2.0"
  endpoints {
    ec2 = "http://localhost:4566"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = var.name
  }
}

variable "ami" {
  description = "Amazon Machine Image"
  default     = "ami-0c3f128b7298d29b9"
}

variable "name" {
  description = "I like names"
}
provider "aws" {
  region  = "eu-west-2" # London
  version = "~> 2.0"
}

variable "name" {
  description = "Name of EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.image_id
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}

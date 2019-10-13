provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.0"
}

variable "name" {
  description = "Name of EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.image_id
  instance_type = var.instance_type
  subnet_id     = element(tolist(data.aws_subnet_ids.all.ids), 0)

  tags = {
    Name = var.name
  }
}
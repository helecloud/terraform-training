provider "aws" {
  region  = "eu-west-2"
  version = "~> 2.0"
}

resource "aws_instance" "web" {
  ami           = "ami-0c3f128b7298d29b9" # eu-west-2 Ubuntu-18.04
  instance_type = "t2.small"
}

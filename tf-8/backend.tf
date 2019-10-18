terraform {
  backend "s3" {
    bucket = "436614339345-terratest"
    key    = "demo/terratest/terraform.tfstate"
    region = "eu-west-2"
  }
}
provider "aws" {
  region  = "eu-west-2" # London
  version = "~> 2.0"
}

module "tf-stack" {
  source = "./modules/stackdemo"
  project_tags =  {
    Name       = "terraform-stackdemo"
    Owner      = "Will Hall"
    Purpose    = "Testing"
    CostCenter = "0001"
  }
}

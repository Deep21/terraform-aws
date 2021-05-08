terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  access_key = ""
  secret_key = ""
  profile    = "default"
  region     = var.region
}

module aws_vpc_module {
  source     = "./modules/vpc"
  vpc_id = "rfg"
}


module "security_groups" {
  source = "./modules/sg"
  vpc_id             =   "vpc-xxxxxxxxx"


}
 

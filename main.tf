terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  access_key = "AKIA3NS27FZTA23KKEW3"
  secret_key = "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"
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
 
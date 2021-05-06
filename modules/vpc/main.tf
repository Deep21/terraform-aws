# Define a vpc
resource "aws_vpc" "primary_vpc" {
  cidr_block = var.vpc_cidr_block
  vpc_region = var.vpc_region
  
  tags = {
    Name = var.vpc_name
  }
}

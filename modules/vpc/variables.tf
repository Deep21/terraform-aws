variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  default     = "my_vpc"
}

variable "vpc_region" {
  description = "AWS region"
  default     = "eu-west-3"
}

resource "aws_vpc" "main-vpc" {
  cidr_block = var.cidr 
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name: "${local.env}-main-vpc"
  }

}

resource "aws_vpc" "main-vpc" {
  cidr_block = "192.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name: "${locals.env}-main-vpc"
  }

}

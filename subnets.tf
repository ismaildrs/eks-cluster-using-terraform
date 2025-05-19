resource "aws_subnet" "private_zone1"{
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_private_subnet1
  availability_zone = local.zone1

  tags = {
    Name="${local.env}-private-${local.zone1}"
    // add tags ...
  }
}

resource "aws_subnet" "public_zone1" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_public_subnet1
  availability_zone = local.zone1
  map_public_ip_on_launch = true

  tags = {
    Name="${local.env}-public-${local.zone1}"
    "kubernetes.io/role/elb"="1" // used by eks to discover subnets where to create public lb
    // add tags ...
  }
}

resource "aws_subnet" "private_zone2"{
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_private_subnet2 
  availability_zone = local.zone2

  tags = {
    Name="${local.env}-private-${local.zone2}"
    // add tags ...
  }
}

resource "aws_subnet" "public_zone2" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.cidr_public_subnet2
  availability_zone = local.zone2
  map_public_ip_on_launch = true

  tags = {
    Name="${local.env}-public-${local.zone2}"
    "kubernetes.io/role/elb"="1"
    // add tags ...
  }
}



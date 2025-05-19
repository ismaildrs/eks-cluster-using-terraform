resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main-vpc
  tags={
    Name = "${locals.env}-igw"
  }
}

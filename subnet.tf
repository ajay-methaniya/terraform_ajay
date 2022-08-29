resource "aws_subnet" "prod-subnet-public-1" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.subnet1_CidrBlock
  map_public_ip_on_launch = "true"
  availability_zone       = var.availibility_zone_a["az_A"]

}

resource "aws_subnet" "prod-subnet-public-2" {
  vpc_id                  = aws_vpc.prod-vpc.id
  cidr_block              = var.subnet2_CidrBlock
  map_public_ip_on_launch = "true"
  availability_zone       = var.availibility_zone_a["az_B"]

}
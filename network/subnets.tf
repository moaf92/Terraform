// Create public subnet for nodeJs and laravel
resource "aws_subnet" "demo-subnet1" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = var.public1_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.az

  tags = {
    Name = "demo-subnet1"
  }
}

resource "aws_subnet" "demo-subnet2" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = var.public2_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.az

  tags = {
    Name = "demo-subnet2"
  }
}

// Create public subnet for DB
resource "aws_subnet" "demo-subnet3" {
  vpc_id     = aws_vpc.demo-vpc.id
  cidr_block = var.private1_subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "demo-subnet3"
  }
}
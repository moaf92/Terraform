resource "aws_nat_gateway" "gateway" {
  allocation_id = aws_eip.elastic.id
  subnet_id     = aws_subnet.demo-subnet2.id

  tags = {
    Name = "gateway"
  }
}  
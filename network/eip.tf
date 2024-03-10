resource "aws_eip" "elastic" {
  
  tags = {
    Name = "elastic"
  }
}
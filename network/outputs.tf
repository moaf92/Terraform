output "one_public" {
  value = aws_subnet.demo-subnet1.id
}

output "two_public" {
  value = aws_subnet.demo-subnet2.id
}

output "three_public" {
  value = aws_subnet.demo-subnet3.id
}

output "nat_ip" {
  value = aws_eip.elastic.public_ip
}

output "public1" {
  value = aws_instance.NodeJs.public_ip
}

output "public2" {
  value = aws_instance.laravel.public_ip
}

output "private1" {
  value = aws_instance.mysql.public_ip
}
// Create laravel instance
resource "aws_instance" "laravel" {
  ami           = var.instance_image
  instance_type = var.instance1_type
  key_name      = var.key
  subnet_id     = aws_subnet.demo-subnet2.id
  vpc_security_group_ids = [aws_security_group.demo_laravel.id]

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  root_block_device {
    volume_size      = 8 
  }
  tags = {
    Name = "laravel"
  }
}


// Create DB instance
resource "aws_instance" "mysql" {
  ami           = var.instance_image
  instance_type = var.instance2_type
  key_name      = var.key
  subnet_id     = aws_subnet.demo-subnet3.id
  vpc_security_group_ids = [aws_security_group.demo_db.id]

  tags = {
    Name = "mysql"
  }
}
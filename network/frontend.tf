// Create NodeJs instance 
resource "aws_instance" "NodeJs" {
  ami           = var.instance_image
  instance_type = var.instance1_type
  key_name      = var.key
  subnet_id     = aws_subnet.demo-subnet1.id
  vpc_security_group_ids = [aws_security_group.demo_nodejs.id]

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  root_block_device {
    volume_size      = 8 
  }
  tags = {
    Name = "NodeJs"
  }
}
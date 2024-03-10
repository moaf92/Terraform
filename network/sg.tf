// Security group for NodeJs app
resource "aws_security_group" "demo_nodejs" {

  vpc_id      = aws_vpc.demo-vpc.id
  

  tags = {
    Name = "demo_nodejs"
  }
}

// Create Roles for Nodejs Security group
resource "aws_security_group_rule" "port_1" {
  type      = "ingress"
  from_port = 80
  to_port   =  80
  security_group_id =  aws_security_group.demo_nodejs.id
  cidr_blocks = [ "0.0.0.0/0" ]
  protocol = "tcp"
} 

resource "aws_security_group_rule" "port_2" {
  type      = "ingress"
  from_port = 22
  to_port   =  22
  security_group_id =  aws_security_group.demo_nodejs.id
  cidr_blocks = [ "0.0.0.0/0" ]
  protocol = "tcp"
} 

resource "aws_security_group_rule" "port_3" {
  type      = "ingress"
  from_port = 3000
  to_port   =  3000
  security_group_id =  aws_security_group.demo_nodejs.id
  cidr_blocks = [ "0.0.0.0/0" ]
  protocol = "tcp"
} 


// Security group for laravel
resource "aws_security_group" "demo_laravel" {

  vpc_id      = aws_vpc.demo-vpc.id  

  tags = {
    Name = "demo-laravel"
  }
}

// Create Roles for laravel Security group
resource "aws_security_group_rule" "port_4" {
  type      = "ingress"
  from_port = 80
  to_port   =  80
  security_group_id =  aws_security_group.demo_laravel.id
  cidr_blocks = [ "0.0.0.0/0" ]
  protocol = "tcp"
} 

resource "aws_security_group_rule" "port_5" {
  type      = "ingress"
  from_port = 22
  to_port   =  22
  security_group_id =  aws_security_group.demo_laravel.id
  cidr_blocks = [ "0.0.0.0/0" ]
  protocol = "tcp"
} 


// Security group for DB
resource "aws_security_group" "demo_db" {

  vpc_id      = aws_vpc.demo-vpc.id
  

  tags = {
    Name = "demo-db"
  }
}

// Create Roles for db Security group
resource "aws_security_group_rule" "port_6" {
  type      = "ingress"
  from_port = 3306
  to_port   =  3306
  security_group_id =  aws_security_group.demo_db.id
  protocol = "tcp"
  source_security_group_id = aws_security_group.demo_laravel.id
} 


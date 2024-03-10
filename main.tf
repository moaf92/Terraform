module "master" {
  source = "./network"
  region = var.region
  cidr_block = var.cidr_block
  public1_subnet_cidr  = var.public1_subnet_cidr
  public2_subnet_cidr  = var.public2_subnet_cidr
  private1_subnet_cidr = var.private1_subnet_cidr
  az = var.az
  instance1_type = var.instance1_type
  instance2_type = var.instance2_type
  instance_image = var.instance_image
  key = var.key








}
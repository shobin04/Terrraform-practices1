module "vpc" {
  source               = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/vpc"
  vpc_name             = var.vpc_name
  cidr_block           = var.cidr_block
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "bastion_security_group" {
  source = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/bastion_security_group"
  vpc_id = var.vpc_id
}

module "private_security_group" {
  source        = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/private_security_group"
  vpc_id        = var.vpc_id
  bastion_sg_id = var.bastion_sg_id
  alb_sg_id = var.alb_sg_id
}

module "key_pair" {
  source   = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/key-pair"
  key_name = var.key_name
}

module "bastion" {
  source           = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/bastion_server"
  bastion_ami      = var.bastion_ami
  instance_type    = var.instance_type
  bastion_name     = var.bastion_name
  public_subnet_id = var.public_subnet_id
  bastion_sg_id = var.bastion_sg_id
  key_name         = var.key_name
  vpc_id           = var.vpc_id
}

module "private_server" {
source          = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/private_server"
private_ami             = var.private_ami
instance_type   = var.instance_type
private_name = var.private_name
private_subnet_id       = var.private_subnet_id
private_sg_id = var.private_sg_id
key_name        = var.key_name
vpc_id           = var.vpc_id
}

module "alb_security_group" {
  source = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/alb_security_group"
  vpc_id        = var.vpc_id
  private_sg_id = var.private_sg_id
}

module "alb" {
  source              = "/mnt/c/Users/Clops_Shobin/Documents/Terraform/terraform-project/modules/alb"
  name                = "my-alb"
  security_groups     = var.security_groups
  subnets             = var.subnets
  vpc_id              = var.vpc_id
  target_group_name   = "my-targets"
  target_group_port   = 80
  target_instance_ids = var.target_instance_ids
  listener_port       = 80
}
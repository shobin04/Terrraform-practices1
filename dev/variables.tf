#vpc
variable "vpc_name" {
  description = "name of Vpc"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

#subnets
variable "public_subnet_cidrs" {
  description = "Public Subnet CIDR values"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Public Subnet CIDR values"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zone for subnets"
  type        = list(string)
}

variable "instance_type" {
  description = "instance type for bastion and private app"
  type        = string
}

variable "bastion_ami" {
  description = "ami for bastion"
  type        = string
}

variable "bastion_name" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "key_name" {
  type = string
}

variable "private_name" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "private_ami" {
  description = "ami for private ec2"
  type        = string
}

variable "vpc_id" {
  type = string
}

variable "bastion_sg_id" {
  type = string
}

variable "private_sg_id" {
  type = string
}

variable "subnets" {
  type = list(string)
}

variable "target_instance_ids" {
  description = "The IDs of the instances to attach to the target group"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "The security groups to associate with the load balancer"
  type        = string
}

variable "security_groups" {
 type = list(string) 
}
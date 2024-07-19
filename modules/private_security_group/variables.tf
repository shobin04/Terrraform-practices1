variable "vpc_id" {
  type = string
}

variable "bastion_sg_id" {
  description = "The ID of the bastion security group"
  type        = string
}

variable "alb_sg_id" {
  description = "Sg of ALB"
  type = string
}
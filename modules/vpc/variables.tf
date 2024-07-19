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


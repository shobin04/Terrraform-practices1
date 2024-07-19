###vpc###
vpc_name             = "my_vpc"
cidr_block           = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones   = ["us-east-1a", "us-east-1b"]
vpc_id               = "vpc-0310ca0d701cebdd9"

###bastion###
bastion_sg_id        = "sg-0401fa1395cf79a00"
key_name             = "my-key-pair"
instance_type = "t2.micro"
bastion_ami = "ami-0e001c9271cf7f3b9"
public_subnet_id = "subnet-08ddbc7c93cb7332c"
bastion_name = "bastion-server"

###private###
private_ami = "ami-0e001c9271cf7f3b9"
private_subnet_id = "subnet-0815e72fcabb8a9b5"
private_sg_id = "sg-02af938713cb50b88"
private_name = "private-server"

###alb###
subnets = ["subnet-0c55f6d33acb8ad3b", "subnet-08ddbc7c93cb7332c"]
target_instance_ids = ["i-01e04298be4166117"]
alb_sg_id =  "sg-09768443ad5b6616d" 
security_groups = [ "sg-09768443ad5b6616d" ]
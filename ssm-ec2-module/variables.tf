variable "vpc_id" {
  description = "VPC id for EC2 deployment"
}

variable "ami_id" {
  description = "AMI id for EC2"
}

variable "subnet_id" {
  description = "Subnet id"
}

variable "instance_name" {
  description = "Unique instance name used for tags and name of sg and iam role"
}
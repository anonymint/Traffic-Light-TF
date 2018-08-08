variable "profile_name" {
  description = "AWS profile name to run"
  default = "default"
}

variable "aws_region" {
  description = "Region to run"
  default = "us-east-1"
}

variable "instance_type" {
  description = "Intance type to launch EC2"
}

variable "keyname" {
  description = "Key pem file for EC2"
}

variable "ami_name" {
  description = "Name of AMI to use as based"
  default = "udacity-carnd-advanced-deep-learning"
}
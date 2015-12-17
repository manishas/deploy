# main creds for AWS connection
variable "aws_access_key_id" {
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
}

variable "region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "availability_zone" {
  description = "availability zone used for the demo"
  default = "us-east-1a"
}

# Special AMI for ECS container Service
variable "ecsAmi" {
  description = "default ECS AMI for us-east-1"
  default = "ami-ddc7b6b7"
}

# this is a keyName for key pairs
variable "aws_key_name" {
  description = "Key Pair Name used to login to the box"
  default = "demo-key"
}

# this is a PEM key for key pairs
variable "aws_key_filename" {
  description = "Key Pair FileName used to login to the box"
  default = "demo-key.pem"
}

variable "cluster_name" {
  description = "cluster name to register instances to"
  default = "demo-ecs"
}

# all variables related to VPC
variable "vpc_name" {
  description = "VPC for the cluster system"
  default = "demoVPC"
}

variable "networkCIDR" {
  description = "Uber IP addressing for the Network"
  default = "200.0.0.0/16"
}

variable "public0-0CIDR" {
  description = "Public 0.0 CIDR for externally accesible subnet"
  default = "200.0.0.0/24"
}

variable "dockerAuthType" {
  description = "type of authentication for ECS pull"
  default = "dockercfg"
}

variable "dockerAuthData" {
  description = "actual Auth to use to login"
  default = "enter Key Here"
}

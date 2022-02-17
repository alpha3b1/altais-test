variable "aws_region" {
  type        = string
  description = "Default region"
  default     = "us-east-1"
}

variable "aws_access_key" {
    type = string
     description = "Access key to AWS console"
}
variable "aws_secret_key" {
    type = string
    description = "Secret key to AWS console"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet1_cidr_block" {
  type        = string
  description = "CIDR Block for Subnet 1 in VPC"
  default     = "10.0.0.0/24"
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 Instnace"
  default     = "t2.micro"
}

variable "owner" {
    description = "Owner of this jumpbox"
}

variable "aws_instance_iam_profile" {
    description = "The IAM profile to use for the jumpbox"
}

variable "aws_profile" {
    description = "The AWS profile to use. This must be defined in ~/.aws/credentials"
}

variable "aws_region" {
    description = "The AWS region to use."
}

variable "aws_zone" {
    description = "The AWS availability zone to use."
}

variable "aws_vpc_security_group_id" {
    description = "The AWS security group to use for the jumpbox"
}

variable "aws_vpc_subnet_id" {
    description = "The subnet to place the jumpbox in"
}

variable "aws_instance_source_dest_check" {
    default     = "false"
    description = "Whether to enable source destination checking for the jumpbox"
}

variable aws_instance_type {
  default = "t2.large"
}

### VARIABLES BELOW MUST NOT BE CHANGED ###

# Images taken from https://cloud-images.ubuntu.com/locator/ec2/
variable amis {
  description = "Default AMIs to use for nodes depending on the region"
  type = "map"
  default = {
    ap-northeast-1 = "ami-bcd6b9db"
    ap-southeast-1 = "ami-ae6259cd"
    cn-north-1 = "ami-31499d5c"
    eu-central-1 = "ami-741bda1b"
    eu-west-1 = "ami-70b59203"
    sa-east-1 = "ami-0cce5660"
    us-east-1 = "ami-e13739f6"
    us-west-1 = "ami-d8bdebb8"
    us-west-2 = "ami-55ff4a35"
  }
}

variable default_instance_user {
  default = "ubuntu"
}


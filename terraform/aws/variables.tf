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

### VARIABLES BELOW MUST NOT BE CHANGED ###

# Images taken from https://cloud-images.ubuntu.com/locator/ec2/
variable amis {
  description = "Default AMIs to use for nodes depending on the region"
  type = "map"
  default = {
    ap-northeast-1 = "ami-cb8a3aaa"
    ap-southeast-1 = "ami-9a7dd0f9"
    cn-north-1 = "ami-99588cf4"
    eu-central-1 = "ami-5a04c335"
    eu-west-1 = "ami-f3326b80"
    sa-east-1 = "sa-east-1"
    us-east-1 = "ami-4c11285b"
    us-west-1 = "ami-c20354a2"
    us-west-2 = "ami-0ffe576f"
  }
}

variable default_instance_user {
  default = "ubuntu"
}

variable instance_type {
  default = "t2.small"
}

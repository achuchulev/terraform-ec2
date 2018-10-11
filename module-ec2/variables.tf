variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_pair" {}

variable "tag_name" {
  default = "new_ec2_instance"
}

variable "vpc_security_group_ids" {
  type = "list"
}

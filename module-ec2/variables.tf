variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_pair" {}
variable "vpc_security_group_ids" {
  type = "list"
}

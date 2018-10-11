variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "us-east-2"
}

variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_pair" {}
variable "tag_name" {}

variable "vpc_security_group_ids" {
  type = "list"
}

module "random_name" {
  source = "github.com/achuchulev/module-random_pet/module-rp"
}
module "module-ec2" {
  source                 = "github.com/achuchulev/module-ec2/module-ec2"
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  key_pair              = "key-${module.random_name.name}"
  tag_name               = "${module.random_name.name}"
}
resource "aws_key_pair" "my_key" {
  key_name   = "key-${module.random_name.name}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

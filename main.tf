module "module-ec2" {
  tag_name               = "${var.tag_name}"
  source                 = "./module-ec2"
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  key_pair               = "${var.key_pair}"
}

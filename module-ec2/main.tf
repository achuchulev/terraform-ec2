resource "aws_key_pair" "my_key" {
  key_name   = "key-${var.identity}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_instance" "new_ec2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  subnet_id              = "${var.subnet_id}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  key_name               = "${aws_key_pair.my_key.id}"
  
  tags {
    Name = "${var.tag_name}"
  }
}

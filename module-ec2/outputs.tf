output "public_ip" {
  value = "${aws_instance.new_ec2.public_ip}"
}

output "public_dns" {
  value = "${aws_instance.new_ec2.public_dns}"
}

output "instance_name" {
  value = "${aws_instance.new_ec2.tags}"
}

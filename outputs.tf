output "public_ip" {
  value = "${aws_instance.atanasc-w1.public_ip}"
}

output "public_dns" {
  value = "${aws_instance.atanasc-w1.public_dns}"
}

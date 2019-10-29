output "ip_address" {
  value = "${aws_eip.ip_address.public_ip}"
}

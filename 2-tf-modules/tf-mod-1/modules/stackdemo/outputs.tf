#outputs

output "ip_address" {
  description = "External IP for Elastic IP"
  value = aws_eip.ip_address.public_ip
}

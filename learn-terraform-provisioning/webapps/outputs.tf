output "nshcloudlabs-webapp1-public_ip" {
  value = aws_instance.nshcloudlabs-webapp1.public_ip
}

output "nshcloudlabs-webapp2-public_ip" {
  value = aws_instance.nshcloudlabs-webapp2.public_ip
}

output "instance_hostnames" {
  description = "Private DNS name of the EC2 instances."
  value       = aws_instance.app_server[*].private_dns
}

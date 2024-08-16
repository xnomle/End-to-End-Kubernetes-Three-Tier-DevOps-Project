#Output Public IP
output "Jenkins_IP" {
  value = aws_instance.ec2.public_ip
}

# Output the EC2 instance username
output "ec2_username" {
  value       = "ubuntu"
  description = "The username to use when SSHing into the EC2 instance"
}

# Output for SSH command
output "ssh_command" {
  value       = "ssh -i ${local_file.private_key.filename} ubuntu@${aws_instance.ec2.public_ip}"
  description = "SSH command to connect to the EC2 instance"
}

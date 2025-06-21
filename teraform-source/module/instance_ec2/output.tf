output "instance_id" {
  value = aws_instannce.ec2-server.id
}
output "private_ip" {
  value = aws_instance.ec2-server.private_ip
}
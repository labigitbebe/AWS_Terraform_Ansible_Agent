#Grabbing EC2 Instace IP address
output "master-instance_ip_addr" {
  value = aws_instance.master.public_ip
}

output "node1-instance_ip_addr" {
  value = aws_instance.node1.public_ip
}
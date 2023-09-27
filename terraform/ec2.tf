resource "aws_instance" "master" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allowed_ports.id]
  provisioner "remote-exec" {
    inline = [
    "echo ${aws_instance.master.public_ip} >> /ansible-files/inventory/hosts",
    "cd /etc/ansible/", "ansible-playbook update-apt.yml",
    "ansible-playbook install_requirements.yml",
    "ansible-playbook copy_source.yml"
    ]
}
  tags = {
    Name     = var.instance_name
  }
}

resource "aws_instance" "node1" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allowed_ports.id]

  provisioner "remote-exec" {
    inline = [
    "echo ${aws_instance.node1.public_ip} >> /ansible-files/inventory/hosts",
    "chmod 400 /terra-files/local-tf-key.pem"
    ]
}
  tags = {
    Name     = var.instance_name
  }
}
  
resource "aws_key_pair" "tf-key-pair" {
  key_name   = "tf-key"
  public_key = tls_private_key.tf-rsa.public_key_openssh
}

resource "tls_private_key" "tf-rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "tf-key-file" {
  content  = tls_private_key.tf-rsa.private_key_pem
  filename = "local-tf-key"
}



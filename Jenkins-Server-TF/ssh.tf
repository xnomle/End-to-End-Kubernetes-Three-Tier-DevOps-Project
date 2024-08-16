 resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
 
resource "aws_key_pair" "Jenkins_access_key" {
  key_name_prefix = var.key-name
  public_key      = tls_private_key.ssh.public_key_openssh
}
 
resource "local_file" "private_key" {
  content  = tls_private_key.ssh.private_key_pem
  filename = "${path.module}/${var.private_key}"
   
}

resource "local_file" "public_key" {
  content  = tls_private_key.ssh.public_key_openssh
  filename = "${path.module}/${var.public_key}"
}
 


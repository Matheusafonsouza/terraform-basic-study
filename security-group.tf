resource "aws_security_group" "ssh-access" {
  name = "ssh-access"
  description = "Allow ssh access"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cdirs_remote_access
  }

  tags = {
    Name = "ssh"
  }
}

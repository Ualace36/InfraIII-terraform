resource "aws_security_group" "sg_acesso_ssh_publico" {
  description = "libera porta SSH para internet"
  # vpc_id = aws_vpc.vpc_ualace.id

  ingress {
    cidr_blocks = [var.ip_internet]
    description = "porta SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  egress {
    description = "porta SSH"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = [var.ip_internet]
  }
  tags = {
    "Name" = "${var.usuario}-sg_acesso_ssh_publico"
  }

}


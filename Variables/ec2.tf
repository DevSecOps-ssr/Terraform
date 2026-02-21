resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {             # this is for terraform
  name        = var.sg_name                           # this is for AWS account
  description = var.sg_description

    egress {            # outbound
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks
  }

    ingress {        # inbound
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.sg_cidr_blocks
    ipv6_cidr_blocks = var.sg_ipv6_cidr_blocks
  }


  tags = var.sg_tags
}

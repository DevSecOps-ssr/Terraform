resource "aws_instance" "example" {
  ami           = local.ami_id
  instance_type = lookup(var.instance_type, local.environment)
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "${var.project}-${local.environment}"  #roboshop-dev
    project = "roboshop"
    Environment = local.environment
  }
}

resource "aws_security_group" "allow_tls" {             # this is for terraform
  name        = "allow-all-terra"                   # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"

    egress {            # outbound
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    ingress {        # inbound
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "allow-all-terraform"
  }
}

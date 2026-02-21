variable "ami_id" {
  type =  string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  
}

variable "ec2_tags" {
  type = map
  default = {
    Name = "variables-demo"
    project = "Roboshop"
    Terraform = "true"
    Environment = "dev"
  }
  
}

variable "sg_name" {
  type = string
  default = "allow-all-terraform-default"
  
}
variable "sg_description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
  
}

variable "sg_from_port" {
  type = number
  default = 0
  
}

variable "sg_to_port" {
  type = number
  default = 0
  
}

variable "sg_protocol" {
  default = -1
  
}

variable "sg_cidr_blocks" {
  type = list 
  default = ["0.0.0.0/0"]   
}

variable "sg_ipv6_cidr_blocks" {
  type = list 
  default = ["::/0"]
  
}

variable "sg_tags" {
  type = map
  default = {
    Name = "allow-all-terraform"
    project ="Roboshop"
    Terraform = "true"
    Environment = "dev"
  }

  
}
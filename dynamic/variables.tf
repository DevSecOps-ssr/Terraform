variable "ingress_rules" {
  default = [
    {
      port = 22
      cidr_blocks = ["0.0.0.0/0"]
      description = "allowing port number 22"
    },

    {
      port = 3306
      cidr_blocks = ["0.0.0.0/0"]
      description = "allowing port number 3306"
    },

    {
      port = 443
      cidr_blocks = ["0.0.0.0/0"]
      description = "allowing port number 443"
    }

  ]
}
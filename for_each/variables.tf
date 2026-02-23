# variable "instances"{
#   type = map
#   default = {
#     mongodb = "t3.micro"
#     mysql = "t3.small"
#     user = "t3.micro"
#     shipping = "t3.small"
#   }
# }

variable "instances" {
  type = list
  default = ["mangodb", "redis"]
}

variable "zone_id" {
  default = "Z00678002XASDPDYY59WR"
}

variable "domain_name" {
  default ="ssrdevsecops.online"
}
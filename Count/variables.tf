variable "instances" {
    type = list(string)
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
  default = "Z00678002XASDPDYY59WR"
  
}

variable "domain_name" {
  default = "ssrdevsecops.online"
  
}

variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "apple", "orange"]
}

variable "fruits_set" {
    type = set(string)
    default = ["apple", "banana", "apple", "orange"]
}
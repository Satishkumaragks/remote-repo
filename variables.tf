variable "cidr_block_vpc" {
default = "10.20.0.0/16"

}

variable "public_subnet_az" {

    type = list
    default = ["ap-south-1a","ap-south-1b"]

}
variable "cidr_ips" {

    type = list
    default = ["10.20.1.0/24","10.20.2.0/24"]

}

variable "subnet_tags" {
    type = list
    default = ["public_subnet-1a","puclic_subnet-1b"]
}
  
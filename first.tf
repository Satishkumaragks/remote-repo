provider "aws" {
  access_key = "AKIA57LFXTOQNENYFAIT"
  secret_key = "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"
  region     = "ap-south-1"
}

resource "aws_vpc" "terraform_vpc" {

  cidr_block           = var.cidr_block_vpc
  enable_dns_hostnames = true
  tags = {
    name = "my vpc"
  }

}

resource "aws_subnet" "public_subnet" {

  count             = 2
  cidr_block        = element(var.cidr_ips, count.index)
  availability_zone = element(var.public_subnet_az, count.index)
  vpc_id            = aws_vpc.terraform_vpc.id
  tags = {
    name = element(var.subnet_tags, count.index)
  }
}

resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.terraform_vpc.id

}

resource "aws_route_table" "demo_route" {

  vpc_id = aws_vpc.terraform_vpc.id
  tags = {
    "name" = "public_routetable"
  }

}

resource "aws_route" "internetgetway" {

  route_table_id = aws_route_table.demo_route.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id

}
  resource "aws_route_table_association" "ass" {

  count          = 2
  subnet_id      = element(aws_subnet.public_subnet.*.id, count.index)
  route_table_id = aws_route_table.demo_route.id
}

output "vpc_id" {

  value = aws_vpc.terraform_vpc.id

}
   

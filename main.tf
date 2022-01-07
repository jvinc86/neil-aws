provider "aws" { region = "eu-west-3" }

variable prefijo { default = "neil" }
variable az1 { default = "eu-west-3a" }
variable az2 { default = "eu-west-3b" }
variable az { default = ["eu-west-3a","eu-west-3b"] }

resource "aws_vpc" "mi_red" {
    cidr_block = "10.0.0.0/16"
    tags = { Name = "vpc-${var.prefijo}" }
}

resource "aws_subnet" "private-1a" {
    vpc_id = aws_vpc.mi_red.id
    availability_zone = var.${var.az[0]}
    cidr_block = "10.0.3.0/24"
}

resource "aws_subnet" "private-1b" {
    vpc_id = aws_vpc.mi_red.id
    availability_zone = var.${var.az[1]}
    cidr_block = "10.0.3.0/24"
}
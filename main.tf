provider "aws" { region = "eu-west-3" }

variable prefijo { default = "neil" }
variable az { default = ["eu-west-3a","eu-west-3b"] }
variable rango_cidr_privado { default = ["10.0.3.0/24","10.0.4.0/24"] }



resource "aws_vpc" "mi_red" {
    cidr_block = "10.0.0.0/16"
    tags = { Name = "vpc-${var.prefijo}" }
}

resource "aws_subnet" "subred-privada-1a" {
    vpc_id = aws_vpc.mi_red.id
    availability_zone = var.az[0]
    cidr_block = var.rango_cidr_privado[0]
    tags = { Name = "subnet-${var.prefijo}-private-1a" }
}

resource "aws_subnet" "subred-privada-1b" {
    vpc_id = aws_vpc.mi_red.id
    availability_zone = var.az[1]
    cidr_block = var.rango_cidr_privado[1]
    tags = { Name = "subnet-${var.prefijo}-private-1b" }
}
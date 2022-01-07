resource "aws_vpc" "mi_red" {
  cidr_block = var.rango_cidr_vpc
  tags       = { Name = "vpc-${var.proyecto}" }
}

resource "aws_subnet" "subred_privada_1" {
  vpc_id            = aws_vpc.mi_red.id
  cidr_block        = var.rango_cidr_subred
  tags              = { Name = "subnet-${var.proyecto}" }
}
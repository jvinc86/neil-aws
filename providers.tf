terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "mipoteparaproyectoneil"
    key    = "proyectico/terraform.tfstate"
    region = "eu-west-3"
  }
}

provider "aws" { 
    region = var.region 
}
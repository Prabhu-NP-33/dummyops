terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

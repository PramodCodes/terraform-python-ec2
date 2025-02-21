terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "pka.in.net"
    key            = "python-ec2"
    region = "us-east-1"
    dynamodb_table = "pka.in.net-state"
  }
}

provider "aws" {
  region = "us-east-1"
}
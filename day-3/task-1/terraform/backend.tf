## Backend

provider "aws" {
  region              = "us-east-1"
}

terraform {
  required_version = "~> 1.2.8"
  backend "s3" {
    bucket  = "gb-desenvolve-01"
    key     = "terraform.state"
    region  = "us-east-1"
    encrypt = "false"
    profile = "gbdesenvolve"
  }
  required_providers {
    aws = {
      version = "~>4.28.0"
      source  = "hashicorp/aws"
    }
  }
}

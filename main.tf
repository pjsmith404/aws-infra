terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.5.0"
    }
  }

  backend "s3" {
    bucket = "pjsmith404-tf-backend"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
    use_lockfile = true
  }
}

provider "aws" {}

resource "aws_s3_bucket" "tf_backend" {
  bucket = "pjsmith404-tf-backend"
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
  backend "s3" {
    bucket = "mechanoidstore-state-prod"
    key    = "sg"
    region = "us-east-1"
    dynamodb_table = "mechanoidstore-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}
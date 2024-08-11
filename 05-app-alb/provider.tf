terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }
  
  backend "s3" {
    bucket = "mechanoidstore-state-prod"
    key    = "app-alb"
    region = "us-east-1"
    dynamodb_table = "mechanoidstore-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}
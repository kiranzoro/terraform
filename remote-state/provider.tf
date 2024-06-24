terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
  backend "s3" {
    bucket = "devops-kiran"
    key    = "devops-kiran"
    region = "us-east-1"
    dynamodb_table = "devops-kiran"
  }
}


#provide authentication

provider "aws" {
    region  = "us-east-1"
}
  
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
<<<<<<< HEAD
  backend "s3" {
    bucket = "devops-kiran"
    key    = "devops-kiran"
    region = "us-east-1"
  }
}


=======
}
>>>>>>> 2c6e4f2317af14526da93305cf6f3e90f180642b
#provide authentication

provider "aws" {
    region  = "us-east-1"
}
  
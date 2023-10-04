# PROVIDER
terraform {

  required_version = "~> 1.5.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "tf-notifier-state-ian-cp-2"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-lock-notifier-state-ian-cp-2"
    region         = "us-east-1"
  }
}
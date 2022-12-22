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
  region                   = "ap-south-1"
  shared_config_files      = ["C:/Users/Administrator/.aws/config"]
  shared_credentials_files = ["C:/Users/Administrator/.aws/credentials"]
  profile                  = "default"
}
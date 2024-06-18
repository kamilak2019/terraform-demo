locals {
  region = var.region
  
}

terraform {
  required_version = ">= 1.8.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.54.1"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = local.region
}

#multiple providers
provider "aws" {
  alias  = "west"
  region = "eu-west-2"
}
terraform {
  backend "s3" {
    bucket       = "my-golden-ai-terraform-state-bucket-140024d7"
    key          = "terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}
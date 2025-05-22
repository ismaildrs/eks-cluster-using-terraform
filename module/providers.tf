provider "aws" {
    
  region = local.region
}

terraform {
  // required_providers is used to list the providers used by the module
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49"
    }
  }
}



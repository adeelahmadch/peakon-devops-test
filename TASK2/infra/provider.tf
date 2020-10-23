provider "aws" {
  region = "us-east-1"
  profile = "test-2020" 
}

terraform {
  backend "s3" {
    profile        = "test-2020"
    bucket         = "tf-remote-state-infra-2020-01"
    key            = "infra/tf/test.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-remote-state-infra-2020-01"
    encrypt        = true
  }
}
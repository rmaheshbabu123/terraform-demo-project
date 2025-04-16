terraform {
  backend "s3" {
    bucket = "mys3-bucket-statefile"
    key    = "eks-terraform-state"
    region = "ap-south-1"
    dynamodb_table = "terraformstatelock"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-south-1"
}
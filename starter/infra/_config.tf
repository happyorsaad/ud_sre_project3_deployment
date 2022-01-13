terraform {
  backend "s3" {
    bucket = "udacity-tf-ssh3" # Update here with your S3 bucket
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
    profile = "ud_nd"
   }
}

provider "aws" {
  region = "us-east-2"
  profile = "ud_nd"
 
  default_tags {
    tags = local.tags
  }
}
provider "aws" {
  region = var.AWS_REGION
  shared_credentials_file = "/home/ec2-user/.aws"
  profile    = "terraform_user"
}


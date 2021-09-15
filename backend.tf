terraform {
  backend "s3" {
    bucket = "mybucketstate-1"
    key    = "remote.tfstate"
    region = "us-east-1"
  }
}
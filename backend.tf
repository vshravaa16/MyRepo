terraform {
  backend "s3" {
    bucket = "mybucketstate-1"
    key    = "remote.tfstate"
    region = "us-east-1"
  }
}

/*terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}*/

data "terraform_remote_state" "admin" {
  backend = "s3"

  config = {
    key    = "remote.tfstate"
  }
}

data "vault_aws_access_credentials" "creds" {
  backend = data.terraform_remote_state.admin.outputs.backend
  role    = data.terraform_remote_state.admin.outputs.role
}


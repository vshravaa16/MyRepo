
variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    "us-east-1" = "ami-087c17d1fe0178315"
  }
}

variable "ingressrules" {
  type    = list(number)
  default = [22, 80, 8080]
}

variable "description" {
  default     = "ssh key"
  description = "Description of secret"
  type        = string
}

variable "name_prefix" {
  description = "Prefix to add to keypair/secret name"
  type        = string
  default     = "Node key"
}

variable "tags" {
  default     = {}
  description = "Tags to add to supported resources"
  type        = map(string)
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "name" { 
  default = "dynamic-aws-creds-vault-admin"
}


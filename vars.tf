variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey1"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey1.pub"
}

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

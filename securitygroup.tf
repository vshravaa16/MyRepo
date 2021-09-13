resource "aws_security_group" "my-sg" {
  name        = "my-sg"
  description = "security group that allows ssh,http protocols and all egress traffic"                                                                                                         
  ingress {
	from_port = 22
	to_port   = 22
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
 	from_port = 80
	to_port   = 80
	protocol  ="tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
	from_port = 80
	to_port   = 80
	protocol  = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
  }
    tags = {
    Name = "MySG"
  }
}

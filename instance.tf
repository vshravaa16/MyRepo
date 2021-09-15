resource "aws_instance" "demo" {
  count         = 2
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"

  # tagging the instance
  tags = {
    Name = "MyEC2 - ${count.index + 1}"
  }

  # the security group
  vpc_security_group_ids = [aws_security_group.my-sg-1.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair-1.key_name

  #attaching the instance profile
  iam_instance_profile = aws_iam_instance_profile.ec2-ssm-instanceprofile.name

}


output "ec2-machines" {
  value = aws_instance.demo.*.public_ip
  }
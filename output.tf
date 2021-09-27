output "backend" {
  value = vault_aws_secret_backend.aws.path
}

output "role" {
  value = vault_aws_secret_backend_role.admin.name
}

output "ec2-machines" {
  value = aws_instance.demo.*.public_ip
}
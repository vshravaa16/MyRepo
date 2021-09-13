resource "aws_iam_role" "ec2-ssm-role" {
    name = "ec2-ssm-role"
    description = "The role for EC2 to access the SSM policy"
    assume_role_policy = "${file("Assume_Role.json")}"
}

resource "aws_iam_instance_profile" "ec2-ssm-instanceprofile" {
    name = "ec2-ssm-profile"
    role = "${aws_iam_role.ec2-ssm-role.name}"
}

resource "aws_iam_role_policy" "ec2-ssm-policy" {
    name = "ec2-ssm-policy"
    role = "${aws_iam_role.ec2-ssm-role.id}"
    policy = "${file("AmazonSSMManagedInstanceCore.json")}"
  
}
resource "aws_iam_role_policy" "ec2_policy" {
  name = "ec2_policy"
  role = aws_iam_role.ec2-assume-role.id
  policy = "${file("ec2policy.json")}"
}

resource "aws_iam_role" "ec2-assume-role" {
  name               = "ec2-assume-role"
  assume_role_policy = "${file("ec2-assume-role-policy.json")}"
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "myec2instance_profile"
  role = "${aws_iam_role.ec2-assume-role.name}"
}

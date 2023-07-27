provider "aws" {
  region = "us-east-1"
  access_key = " "
  secret_key = " "
}

resource "aws_instance" "web" {
  ami                  = "ami-xxxxxxxxx"
  instance_type        = "t2.micro"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"
  tags = {
    Name = "Hello World"
  }
}
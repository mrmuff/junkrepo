/*
provider "aws" {
  access_key = "AKIAJAOV3NDVZL3M2RNA"
  secret_key = "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"
  region     = "us-west-1"
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_ssh"
  }
}
*/

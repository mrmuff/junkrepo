provider "aws" {
  # access_key = ""
  # secret_key = ""
  region     = "us-west-1"
}
resource "aws_security_group" "dc-security-group" {
  name        = "dc-security-group"
  vpc_id      = "vpc-3cc85c58"
  description = "Allow Domain Controller ports and protocols inbound"

  ingress {
    from_port   = 464
    to_port     = 464
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 464
    to_port     = 464
    protocol    = "udp"
    cidr_blocks = ["10.237.0.0/16"]
  }
  ingress {
    from_port   = 49152
    to_port     = 65535
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 49152
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 5666
    to_port     = 5666
    protocol    = "tcp"
    cidr_blocks = ["10.25.0.0/16"]
  }
  ingress {
    from_port   = 445
    to_port     = 445
    protocol    = "tcp"
    cidr_blocks = ["10.70.0.0/16"]
  }
  ingress {
    from_port   = 445
    to_port     = 445
    protocol    = "tcp"
    cidr_blocks = ["10.237.0.0/16"]
  }
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.40.4.0/24"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.40.5.0/24"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["141.206.246.10/32"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.25.0.0/16"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.26.0.0/16"]
  }
  ingress {
    from_port   = 5985
    to_port     = 5985
    protocol    = "tcp"
    cidr_blocks = ["10.70.4.0/22"]
  }
  ingress {
    from_port   = 135
    to_port     = 135
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 139
    to_port     = 139
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 3269
    to_port     = 3269
    protocol    = "tcp"
    cidr_blocks = ["10.44.4.0/24"]
  }
#  ingress {
#    from_port   = 3269
#    to_port     = 3269
#    protocol    = "tcp"
#    security_groups = ["sg-8f8db4e8"]
#  }
  ingress {
    from_port   = 445
    to_port     = 445
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 138
    to_port     = 138
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
#  ingress {
#    from_port   = 138
#    to_port     = 138
#    protocol    = "udp"
#    security_groups = ["sg-8f8db4e8"]
#  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.44.4.0/22"]
  }
  ingress {
    from_port   = 464
    to_port     = 464
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 5355
    to_port     = 5355
    protocol    = "udp"
    cidr_blocks = ["10.44.6.0/24"]
  }
  ingress {
    from_port   = 5355
    to_port     = 5355
    protocol    = "udp"
    cidr_blocks = ["10.44.7.0/24"]
  }
  ingress {
    from_port   = 5722
    to_port     = 5722
    protocol    = "tcp"
    cidr_blocks = ["10.44.6.0/24"]
  }
  ingress {
    from_port   = 5722
    to_port     = 5722
    protocol    = "tcp"
    cidr_blocks = ["10.44.7.0/24"]
  }
  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 123
    to_port     = 123
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 3268
    to_port     = 3268
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 9389
    to_port     = 9389
    protocol    = "tcp"
    cidr_blocks = ["10.44.6.0/24"]
  }
  ingress {
    from_port   = 9389
    to_port     = 9389
    protocol    = "tcp"
    cidr_blocks = ["10.44.7.0/24"]
  }
#  ingress {
#    from_port   = 9389
#    to_port     = 9389
#    protocol    = "tcp"
#    security_groups = ["sg-8f8db4e8"]
#  }
  ingress {
    from_port   = 88
    to_port     = 88
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
#  ingress {
#    from_port   = 0
#    to_port     = 65535
#    protocol    = "tcp"
#    security_groups = ["sg-0d34e776 (Nessus_Scans_awstmc-prdcp01)"]
#  }
  ingress {
    from_port   = 137
    to_port     = 137
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 636
    to_port     = 636
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    from_port   = 88
    to_port     = 88
    protocol    = "udp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  egress {
     from_port = 0
     to_port = 0
     protocol = "-1"
     cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "dc-security-group"
  }
}

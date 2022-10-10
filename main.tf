provider "aws" {
  region     = "us-west-1"
  access_key = "AKIAXN5RHA6V64QNB743"
  secret_key = "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"
}

resource "aws_security_group" "Scenario17" {
  name        = "SG with Single port(UDP and TCP) and all IP. "
  description = "Ingress"
  vpc_id      = "vpc-481b202f"

  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 389
    to_port     = 389
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Scenario17"
  }
}




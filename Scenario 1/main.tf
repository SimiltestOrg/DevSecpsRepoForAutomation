provider "aws" {
  region     = "us-west-1"
}

resource "aws_security_group" "Scenario1" {
  name        = "SG with all port and  all IP."





  vpc_id      = "VPC-481b202f"

  ingress {
    from_port                           = 0



    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]



  }

}




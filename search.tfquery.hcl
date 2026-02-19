list "aws_instance" "hashitalksdemo_ec2" {
  provider = aws

  include_resource = true

  config {
    region = "eu-west-1"

    filter {
      name   = "tag:Name"
      values = ["hashitalks2026-demo-*"]
    }

    filter {
      name   = "instance-state-name"
      values = ["running", "stopped"]
    }
  }
}

list "aws_s3_bucket" "hashitalksdemo_s3" {
  provider = aws
  include_resource = true

  config {
    region = "eu-west-1"
  }
}


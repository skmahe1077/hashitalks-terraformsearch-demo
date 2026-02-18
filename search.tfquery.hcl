list "aws_instance" "demo_ec2" {
  provider = aws
  limit    = 50

  include_resource = true

  config {
    region = "eu-west-1"

    filter {
      name   = "tag:Name"
      values = ["demo-search-import-*"]
    }

    filter {
      name   = "instance-state-name"
      values = ["running", "stopped"]
    }
  }
}

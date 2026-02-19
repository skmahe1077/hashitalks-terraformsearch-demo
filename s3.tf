
import {
  to       = aws_s3_bucket.hashitalksdemo_s3_0
  provider = aws
  identity = {
    account_id = "038462791702"
    bucket     = "hashitalks-demo-s3"
    region     = "eu-west-2"
  }
}

resource "aws_s3_bucket" "hashitalksdemo_s3_0" {
  provider            = aws
  bucket              = "hashitalks-demo-s3"
  force_destroy       = null
  object_lock_enabled = false
  region              = "eu-west-2"
  tags                = {}
  tags_all            = {}
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

import {
  to       = aws_s3_bucket.hashitalksdemo_s3_1
  provider = aws
  identity = {
    account_id = "038462791702"
    bucket     = "hashitalks-demo-s3-2"
    region     = "eu-west-2"
  }
}

resource "aws_s3_bucket" "hashitalksdemo_s3_1" {
  provider            = aws
  bucket              = "hashitalks-demo-s3-2"
  force_destroy       = null
  object_lock_enabled = false
  region              = "eu-west-2"
  tags                = {}
  tags_all            = {}
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

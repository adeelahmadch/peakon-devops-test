resource "aws_s3_bucket" "tf_state" {
  bucket = "tf-remote-state-infra-2020-01"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "tf_locks" {
  name         = "tf-remote-state-infra-2020-01"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "test-2020" 
}
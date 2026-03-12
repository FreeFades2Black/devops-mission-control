provider "aws" {
  region = "us-east-1" 
}

# 1. The S3 Bucket for State
resource "aws_s3_bucket" "terraform_state" {
  bucket = "free-devops-mission-control-state" # Must be globally unique
  force_destroy = true
}

# 2. Enable Versioning (So you can roll back state)
resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# 3. DynamoDB for State Locking
resource "aws_raw_dynamodb_table" "terraform_locks" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

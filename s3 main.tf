resource "aws_s3_bucket" "main" {
  bucket = "${var.project_name}-bucket"
  tags = {
    Name = "${var.project_name}-bucket"
  }
}

resource "aws_s3_bucket_ownership_controls" "main" {
  bucket = aws_s3_bucket.main.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "main" {
  bucket = aws_s3_bucket.main.id
  acl    = "private"
}

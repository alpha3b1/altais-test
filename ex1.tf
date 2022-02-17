resource "aws_s3_bucket" "test_bucket" {
  bucket        = "test-altais-ig"
  #acl           = private
  #force_destroy = true
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.test_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "test_file" {
  bucket = aws_s3_bucket.test_bucket.bucket
  key    = "test_file.txt"
  source = "./test_file.txt"

}


resource "aws_s3_bucket" "bucket" {

  bucket = var.bucket_name
  acl    = "private"

  tags = var.product_tag_prod
}
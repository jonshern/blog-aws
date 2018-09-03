

# resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {
#   comment = "Some comment"
# }


resource "aws_s3_bucket" "b" {
  bucket = "website-${data.aws_caller_identity.current.account_id}"
  acl    = "public-read"

    website {
    index_document = "index.html"
    error_document = "error.html"
    }

  tags {
    Name = "sherndevelopment-${data.aws_caller_identity.current.account_id}"
  }
}

# locals {
#   s3_origin_id = "myS3Origin"
# }


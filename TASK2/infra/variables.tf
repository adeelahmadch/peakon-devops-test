variable "bucket_name" {
    default = "fake-product-assets"
    description = "S3 Bucket for Fake Product App"
  
}

variable "product_tag_prod" {
  type        = map
  description = "Description of the product tags"

  default = {
    Name           = "fake-product-production"  
    CostCenter     = "peakon"
    Environment    = "production"
  }
}

variable "product_tag_stg" {
  type        = map
  description = "Description of the product tags"

  default = {
    Name           = "fake-product-staging"  
    CostCenter     = "peakon"
    Environment    = "staging"
  }
}
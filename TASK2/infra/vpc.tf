module "fake-product-staging" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.62.0"

  name = "fake-product-staging"
  cidr = "172.20.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["172.20.100.0/22", "172.20.104.0/22"]
  public_subnets  = ["172.20.0.0/22", "172.20.4.0/22"]

  create_igw         = false
  enable_nat_gateway = false

  tags = var.product_tag_stg
}

module "fake-product-production" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.62.0"

  name = "fake-product-production"
  cidr = "10.156.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.156.128.0/19", "10.156.160.0/19"]
  public_subnets  = ["10.156.0.0/19", "10.156.32.0/19"]

  create_igw         = false
  enable_nat_gateway = false

  tags = var.product_tag_prod
}
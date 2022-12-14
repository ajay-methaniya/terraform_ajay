
resource "aws_vpc" "prod-vpc" {
  cidr_block           = var.vpc_CidrBlock
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  instance_tenancy     = "default"
}

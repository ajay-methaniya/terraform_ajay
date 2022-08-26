variable "vpc_CidrBlock" {
  type        = string
  default     = "10.40.0.0/16"
  description = "This IP Range is for us east 2"
}
resource "aws_vpc" "prod-vpc" {
    cidr_block = var.vpc_CidrBlock
    enable_dns_support = "true" 
    enable_dns_hostnames = "true" 
    enable_classiclink = "false"
    instance_tenancy = "default"    
}

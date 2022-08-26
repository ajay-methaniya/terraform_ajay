variable "subnet1_CidrBlock" {
  type        = string
  default     = "10.40.1.0/24"
  description = "This IP Range is for us east 2"
}
variable "subnet2_CidrBlock" {
  type        = string
  default     = "10.40.2.0/24"
  description = "This IP Range is for us east 2"
}

variable "availibility_zone_a"{
    type = map
    default = {
     az_A = "us-east-2a"
     az_B = "us-east-2b"
    }
}



resource "aws_subnet" "prod-subnet-public-1" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = var.subnet1_CidrBlock
    map_public_ip_on_launch = "true" 
    availability_zone = var.availibility_zone_a["az_A"]
    
}

resource "aws_subnet" "prod-subnet-public-2" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = var.subnet2_CidrBlock
    map_public_ip_on_launch = "true" 
    availability_zone = var.availibility_zone_a["az_B"]
    
}
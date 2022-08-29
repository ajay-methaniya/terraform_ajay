

variable "region" {
  type        = string
  default     = ""
  description = "Default Region for aws"
}
variable "azs" {
  type    = list(any)
  default = ["us-east-2a", "us-east-2b"]
}
variable "az_eu" {
  type = map(any)
  default = {
    az_A = "us-east-2a"
    az_B = "us-east-2b"
  }
}
variable "availibility_zone_a" {
  type    = map(any)
  default = {}
}

variable "vpc_CidrBlock" {
  type        = string
  default     = ""
  description = "This IP Range is for us east 2"
}

variable "subnet1_CidrBlock" {
  type        = string
  default     = ""
  description = "This IP Range is for us east 1"
}
variable "subnet2_CidrBlock" {
  type        = string
  default     = ""
  description = "This IP Range is for us east 2"
}



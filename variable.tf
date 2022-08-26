variable "CidrBlock" {
  type        = string
  default     = "10.10.0.0/20"
  description = "This IP Range is for us east 2"
}

variable "region" {
  type        = string
  default     = "us-east-2"
  description = "Default Region for aws"
}
variable "azs"{
	type = list
	default = ["us-east-2a","us-east-2b"]
}
variable "az_eu"{
	type = map
	default = {
	 az_A = "us-east-2a"
	 az_B = "us-east-2b"
	}
}

output "IP_range" {
	value = var.CidrBlock
}

output "Default_region" {
	value = var.region
}
output "az_a" {
	value = var.azs[0]
}
output "az_b" {
	value = var.azs[1]
}
output "az_eu_A" {
	value = var.az_eu["az_A"]
}
output "az_eu_B" {
	value = var.az_eu["az_B"]
}
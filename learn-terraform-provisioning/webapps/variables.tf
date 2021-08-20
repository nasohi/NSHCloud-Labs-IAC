variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.1.0.0/24"
}

variable "cidr_subnet2" {
  description = "CIDR block for the subnet2"
  default     = "10.1.1.0/24"
}


variable "environment_tag" {
  description = "Environment tag"
  default     = "NSHCloud-Labs"
}

variable "region" {
  description = "The region Terraform deploys your instance"
}


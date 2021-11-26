variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.1.0.0/24"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default     = "us-east-1a"
}
variable "public_key_path" {
  description = "Public key path"
  #default     = "path of the key" TODO complete
} 
variable "public_key_name" {
  description = "Public key name"
  default     = "id_rsa.pub"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default     = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default     = "Development"
}
variable "vpc_name" {
  description = "the prefix of the vpc name"
  default     = "nimbux_test_"
}


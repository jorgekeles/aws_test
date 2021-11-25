variable "database_name" {
    default = "wordpress_db" 
}
variable "database_password" {
    default = "PassWord4-user"
}
variable "database_user" {
    default = "wordpress_user"
}

variable "region" {
    default = "us-west-2"
}

variable "shared_credentials_file" {
    default = "/home/jorgekeles/.aws"
}
/* variable "ami" {} */
variable "instance_type" {
    default = "t2.micro"
}
variable "key_name" {
    default = "deployer-key"
}


# aws_test
Creation infra with Terraform 

![High-level diagram](pic.png "High-level diagram")

# Module Structure
This Module contains:
`main.tf` : Main file with all the resources declaration
`variables.tf` : Declaration of all the variables required by the module
`providers.tf` : Declaration of the providers required
`terraform.tfvars` : Value for the variables. This file is optional 

# Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
cidr_vpc | Classless Inter-Domain Routing for VPC | string | "10.1.0.0/16" | NO
cidr_subnet | Classless Inter-Domain Routing for subnet | string | "10.1.0.0/24" | NO
availability_zone | Location inside the Region | string | "us-east-1a" | NO
region | The region to host the servers | string | us-east-1 | NO
public_key_name | Name of the ssh pub key | string | n/a | YES
instance_type | The instance type for the cluster | string | t2.micro | NO
vpc_name | The name for the VPC | string | "nimbux_test_" NO
environment_tag | Label for environment | string | "Development" | NO

## aws_test

This sample is used to create an example of EC2 servers with 2 entries for the minimum and 5 for the maximum and creates a MYSQL database on AWS RDS. EC2 instances run within Auto Scaling group created by [auto_scaling module](https://github.com/terraform-aws-modules/terraform-aws-autoscaling) and for the Load Balancer uses [elb_http module](https://github.com/terraform-aws-modules/terraform-aws-elb). The security group was created by [instance_sg](https://github.com/terraform-aws-modules/terraform-aws-security-group) and all the resources for EFS.
To execute this script you must complete the variable `public key` from where the script will run.
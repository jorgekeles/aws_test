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
database_name | The name of the data base | n/a | string | YES
database_user | The user name for the database | n/a | string | YES
shared_credentials_file | Access key location | n/a | string | YES
region | The region to host the servers | us-west-2 | string | NO
key_name | Name of the key | n/a | string | YES
instance_type | The instance type for the cluster | t2.micro | string | NO
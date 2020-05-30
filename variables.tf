##################
# VARIABLES
##################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "us-east-1"
}
variable network_address_space {
  type = map(string)
}
variable "instance_size" {
  type = map(string)
}
variable "subnet_count" {
  type = map(number)
}
variable "instance_count" {
  type = map(number)
}

####################
# LOCALS
####################

locals {
  env_name = lower(terraform.workspace)

  common_tags = {
    Environment = local.env_name
  }

}
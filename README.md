# Elasticsearch-ec2-terraform

[![Terraform](https://img.shields.io/badge/Validation-Passed-green)]()

This repo contains terraform code which creates EC2 instance with Elasticsearch installed in it.  

## Features
Brings up EC2 instance[s] in provided VPC and Subnet range along with attached security group and installs Elasticsearch in it.

## Prerequisites
* [AWS Command Line Interface](http://aws.amazon.com/documentation/cli/) should be setup on machine
* [Terraform](https://www.terraform.io/)

Quick install prerequisites on Mac OS with [Homebrew](http://brew.sh/):

```bash
$ brew update && brew install awscli terraform
```

## Requirements

<img src="images/terraform.png" alt="drawing" width="100"/>
<br />
<img src="images/aws.png" alt="drawing" width="100"/>

## Providers

<img src="images/aws_tf.png" alt="drawing" width="100"/>

## Quick start
1. Install [Terraform](https://www.terraform.io/) and [AWS Command Line Interface](http://aws.amazon.com/documentation/cli/) .
1. Set your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
1. Run `make` for deploying EC2 instance with Elasticsearch running inside it.
1. After it's done deploying, json response will be seen on console.
1. Run `make destroy` for cleaning up and deleting all resources after you're done

## Resources
1. [VPC](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws)
1. [Security Group](https://www.terraform.io/docs/providers/aws/r/security_group.html)
1. [AWS Instance](https://www.terraform.io/docs/providers/aws/r/instance.html)


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|aws_access_key|Access key to connect to AWS account|`string`|`""`|`yes`|
|aws_secret_key|AWS secret key to connect to AWS account|`string`|`""`|`yes`|
|private_key_path|Private key (.pem) path to connect to EC2 instance|`string`|`""`|`yes`|
|key_name|Key name for the private key used for connecting to EC2 instance|`string`|`""`|`yes`|
|region|Region in which resources should be deployed|`string`|`"us-east-1"`|`no`|
|network_address_space|Network range for VPC|`map(string)`|`{}`|`yes`|
|instance_size|Size of the ec2 instance|`map(string)`|`{}`|`yes`|
|subnet_count|Number of subnets in VPC|`map(number)`|`{}`|`yes`|
|instance_count|Number of EC2 instances |`map(number)`|`{}`|`yes`|


## References
* [Terraform](https://www.terraform.io/)
* [AWS](https://aws.amazon.com/console/)
* [Stack Overflow](https://stackoverflow.com/)

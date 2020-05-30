.PHONY: all

all: key-pair init workspace validate plan apply

key-pair:
	aws ec2 create-key-pair --key-name InstanceKeys --query 'KeyMaterial' --output text > private_key_file.pem

init:
	terraform init

workspace:
	terraform workspace new Development

validate:
	terraform validate

plan:
	terraform plan -out dev.tfplan

apply:
	terraform apply "dev.tfplan"

destroy:
	terraform destroy
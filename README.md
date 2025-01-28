# Terraform-series
## Day 2
## Terraform Configuration to Create EC2 Instance in a New Subnet under an Existing VPC

**Overview**
This Terraform configuration is designed to:
```bash
Fetch an existing VPC using the aws_vpc data source.
Create a new subnet inside the existing VPC, using a CIDR block provided as input.
Launch an EC2 instance in the newly created subnet.
The goal is to automate the creation of resources within an existing AWS VPC while ensuring that the subnet and EC2 instance creation don't overlap with existing subnets.
```
**File Structure**
The configuration consists of the following files:
```bash
main.tf: Contains the main resources, including data sources and resources for subnet and EC2 instance.
provider.tf: Configures the AWS provider and region.
variables.tf: Defines input variables like region and CIDR block.
terraform.tfvars: Contains the values for the variables.
```
**Terraform Files Breakdown**
```bash
main.tf - Create Resources Based on Existing VPC

data "aws_vpc" "fetch": This data source fetches the existing VPC in the region.

resource "aws_subnet" "subnet1": Creates a new subnet within the existing VPC using the CIDR block defined in the terraform.tfvars file.

resource "aws_instance" "ec2day2": Creates an EC2 instance inside the newly created subnet with a specified AMI ID and instance type.

provider.tf - AWS Provider Configuration
The provider "aws" block specifies the AWS region, which is defined in variables.tf and passed via terraform.tfvars.

variables.tf - Variable Definitions
region: Specifies the AWS region where the resources will be created.

cidr: Specifies the CIDR block for the new subnet.

terraform.tfvars - Variable Values
This file defines the values of the variables region and cidr for the region and CIDR block. You can modify the CIDR block to ensure it doesn’t conflict with any existing subnets in your VPC.
```
**Steps to Deploy Resources**
```bash
Initialize the Terraform Working Directory
terraform init

Validate the Configuration
terraform validate

Apply the Configuration
terraform apply
```
## Day 3
```bash
```

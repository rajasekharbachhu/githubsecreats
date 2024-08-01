# Define the provider
provider "aws" {
  region = var.aws_region
}

# Define a variable for the AWS region
variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
}

# Define the VPC resource
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc"
  }
}

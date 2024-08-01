# Define the provider
provider "aws" {
  region = "us-east-1"  # Specify your desired region
}

# Define the VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"  # Define the CIDR block for the VPC
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "my-vpc"
  }
}

# Define a public subnet
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"  # Define the CIDR block for the subnet
  availability_zone       = "us-east-1a"  # Specify your desired availability zone
  map_public_ip_on_launch = true
  tags = {
    Name = "my-public-subnet"
  }
}

terraform {
  backend "s3" {
    bucket         = "free-devops-mission-control-state"
    key            = "workspaces/mission-control/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
    profile        = "Free"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "Free"
}

# ONLY ONE VPC BLOCK SHOULD REMAIN:
resource "aws_vpc" "mission_control_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "mission-control-vpc"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.mission_control_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "mission-control-public-1"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mission_control_vpc.id

  tags = {
    Name = "mission-control-igw"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.mission_control_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "mission-control-public-rt"
  }
}

resource "aws_route_table_association" "public_1_assoc" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}


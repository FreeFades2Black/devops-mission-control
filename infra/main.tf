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

resource "aws_vpc" "mission_control_vpc" {
  cidr_block = "10.0.0.0/16"
  tags       = { Name = "mission-control-vpc" }
}

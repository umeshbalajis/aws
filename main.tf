#Declaring AWS Provider and credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWL3ANA5QPET54CPI**"
  secret_key = "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**"
}
#######################################################
#Creating Production VPC with CIDR: 172.16.0.0/16
resource "aws_vpc" "vpc" {
    cidr_block = "172.16.0.0/16" 
    tags = {
        Name = "UAT VPC"
    }
}
output "vpcid" {
  value = aws_vpc.vpc.id
}
###########################################################

provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "s3" {
    bucket = "terraform-test-bucket-129"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
    dynamodb_table = "dd-tf-locking"
  }
}


resource "aws_vpc" "my_vpc" {
  count                   = "${terraform.workspace == "dev" ? 0:1}"
  cidr_block            = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "TerraformVPC"
    Environment = "Dev"
    Location = "Australia"
  }
}


/* output "my_vpc_output" {
  value = "${aws_vpc.my_vpc.cidr_block}"
}  */

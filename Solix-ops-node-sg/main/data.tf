## above code pull vpc-id directly from aws

### below code pull all ids from ssm parameter store # since cloud team have added all ids in ssm so we are leveraging ssm.

data "aws_ssm_parameter" "private_vpc_id" {

  name = var.private_vpc_id
}

data "aws_ssm_parameter" "private_subnet_a" {

  name = var.private_subnet_a
}

/*data "aws_ssm_parameter" "private_subnet_b" {

  name = var.private_subnet_b
}*/

/*data "aws_ssm_parameter" "private_subnet_c" {

  name = var.private_subnet_c
}*/

/*data "aws_ssm_parameter" "ami_name" {

  name = var.ami_name
}
data "aws_ssm_parameter" "KmsKeyId" {

  name = var.kms_key_id
}*/



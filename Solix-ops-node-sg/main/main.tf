#######################
# Defining SG Module ##
#######################

module "sg" {  

  source = "../modules/sg"

  private_subnet_a         = data.aws_ssm_parameter.private_subnet_a.value 

  security_name_placeholder = var.security_name_placeholder 
  securitygroup_private_vpc         = data.aws_ssm_parameter.private_vpc_id.value 
  #securitygroup_private_vpc = var.private_vpc_id

  cidr_with_desc_443_https = var.cidr_with_desc_443_https 
  cidr_with_desc_80 = var.cidr_with_desc_80 
  cidr_with_desc_221 = var.cidr_with_desc_22 
  cidr_with_desc_8531_sccm = var.cidr_with_desc_8531_sccm 
  cidr_with_application_vpc= var.cidr_with_application_vpc

  /*security_name_placeholder = data.aws_ssm_parameter.security_name_placeholder.value
  securitygroup_private_vpc         = data.aws_ssm_parameter.private_vpc_id.value 
  
  cidr_with_desc_443_https = data.aws_ssm_parameter.cidr_with_desc_443_https.value 
  cidr_with_desc_80 = data.aws_ssm_parameter.cidr_with_desc_80.value 
  cidr_with_desc_221 = data.aws_ssm_parameter.cidr_with_desc_22.value
  cidr_with_desc_8531_sccm = data.aws_ssm_parameter.cidr_with_desc_8531_sccm.value 
  cidr_with_application_vpc= data.aws_ssm_parameter.cidr_with_application_vpc.value*/
  

  common_tags = local.common_tags 
}

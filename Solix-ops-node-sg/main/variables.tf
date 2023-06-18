###########################################################
######### TAGS ############################################
###########################################################

variable "tag_Environment" {
  description = "Environment for the resource"
  default     = "dev"
}

variable "tag_Platform" {
  description = "Platform for the resource"
  default     = "linux"
}

variable "tag_ApplicationID" {
  description = "ApplicationID for the resource"
  default     = "SOLIX"
}

variable "tag_PowerMgt" {
  description = "PowerManagement for the resource"
  default     = "working-days-aest-7am-7pm-on-excluding-holidays"
}

variable "tag_Owner" {
  description = "Owner for the resource"
  default     = "mark_meyer@insigniafinancial.com.au"
}

variable "tag_CostCentre" {
  description = "CostCentre for the resource"
  default     = "1122"
}

variable "tag_Snapshot" {
  description = "Snapshot for the resource"
  default     = "snapw"
}

variable "tag_patchcyle" {
  description = "patchcycle for the resource"
  default     = "NonProd"
}

variable "tag_PatchGroup" {
  description = "Patch Group for the resource"
  default     = "rhel8PatchGroup"
}

variable "tag_OUName" {
  description = "OUName for the resource"
  default     = "none"
}

####################################################
###SECURITY GROUP###################################
####################################################

variable "security_name_placeholder" {
  description = "securitygroup name placeholder for the SG resources. This is part of SGs name"
  default     = "dev"
}

variable "cidr_with_desc_443_https" {
  description = "list all the sources for 443"
  type        = map(string)
  default = {
    "IFL"                        = "172.16.0.0/12" #access from dev vdi
    "Internal_comm and alb"      = "10.76.48.0/23"
    "share non-prod to sccm"     = "10.76.0.0/16"
    "share aws workload to sccm" = "10.78.0.0/16"
  }

}

variable "cidr_with_desc_8531_sccm" {
  description = "cidr blocks for port 8531"
  type        = map(string)
  default = {
    "nonprod_sccm" = "10.76.0.0/16"
    "aws to sccm"  = "10.78.0.0/16"
  }
}

variable "cidr_with_desc_80" {

  description = "cidr blocks for port 80"
  type        = map(string)
  default = {
    "access from local" = "172.16.0.0/12"
    "lb"                = "10.76.48.0/23"
  }

}

variable "cidr_with_application_vpc" {

  description = "cidr blocks for port 80"
  type        = map(string)
  default = {
    "application_vpc" = "10.76.48.0/23"
    
  }

}

variable "cidr_with_desc_22" {

  description = "cidr blocks for port 22"
  type        = map(string)
  default = {
    "application_vpc" = "10.76.48.0/23"
    "tooling_vpc"     = "10.76.50.0/23"
    
  }

}

#############################################################
####    EC2 #################################################
#############################################################

variable "solix_server_name" {
  description = "name of the solix server"
  default     = "solix-ops-node" 

}

variable "ebs_root_volume_size" {
  description = "root volume size for the solix server"
  default     = "50" #250
}

variable "ebs_volume_type" { 
  description = "ebs volume type"
  default     = "gp3"
}
variable "instance_type" {
  description = "solix server instance type"
  default     = "t4g.xlarge"
}

variable "key_name" {
  description = "solix server pem key"
  default     = "devdevops"
  
}
variable "availability_zone" {
    description = "availability zone for the ec2 instance"
    default     = "ap-southeast-2a"
}

/*variable "ami_name" {
  description = "retrieving latest linux 2019 ami name from ssm paramaters"
  default     = "/golden-ami/rhel8/latest"

}*/

# since its a solix server we are pulling management vpcid, subnet ids from parameter store
variable "private_vpc_id" {
  description = "retrieving vpc id from ssm paramaters"
  default     = "/common/network/application/vpc/id"

}
variable "private_subnet_a" {
  description = "retrieving subnet of zone a from ssm paramaters"
  default     = "/common/network/application/subnet/a"

}
/*variable "private_subnet_b" {
  description = "retrieving subnet of zone b from ssm paramaters"
  default     = "/common/network/application/subnet/b"

}*/
/*variable "private_subnet_c" {
  description = "retrieving subnet of zone c from ssm paramaters"
  default     = "/common/network/application/subnet/c"

}*/

/*variable "kms_key_id" {
  description = "Kms key to encrypt solix server ebs volume"
  default     = "/common/kms/workload_cmk_arn"
}*/

variable "delete_on_termination" {
    description = "delete on termination should be true for non-prod and false for prod "
    default     = "true"
}
variable "aws_region" {
  description = "aws region to launch linux solix server"
  default     = "ap-southeast-2"
}

variable "role_name" {
  description = "role name for the scdp dev bastion server"
  default     = "ec2profivisioningrole"
}

variable "account_id" {
  description = "aws account id"
  default     = "289492822230"
}
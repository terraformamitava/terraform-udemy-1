tag_Environment   = "dev"
tag_Platform      = "linux"
tag_ApplicationID = "SOLIX"
tag_PowerMgt      = "working-days-aest-7am-7pm-on-excluding-holidays"
tag_Owner         = "mark_meyer@insigniafinancial.com.au"
tag_CostCentre    = "1122"
tag_Snapshot      = "snapw"
tag_patchcyle     = "NonProd"
tag_PatchGroup    = "rhel8PatchGroup"
tag_OUName        = "none"




securitygroup_name_placeholder = "dev"


cidr_with_desc_22 =  {

    "application_vpc" = "10.76.48.0/23"
    "tooling_vpc"     = "10.76.50.0/23"
}

cidr_with_desc_443_https       = {

    "local" = "172.16.0.0/12" #access from dev vdi
    "alb"   = "10.76.50.0/23" 
    "share non-prod to sccm"     = "10.76.0.0/16"
    "share aws workload to sccm" = "10.78.0.0/16"
    
}
cidr_with_desc_80              = {

    "access from local" = "172.16.0.0/12"
    "lb"                = "10.76.50.0/23"

}
cidr_with_desc_8531_sccm       = {

    "nonprod_sccm" = "10.76.0.0/16"
    "aws to sccm"  = "10.78.0.0/16"
}
cidr_with_application_vpc = {
    "application_vpc" = "10.76.48.0/23"
}






account_id            = "289492822230"
role_name             = "ec2profivisioningrole"
solix_server_name     = "solix-ops-node"
ebs_root_volume_size  = "250"
ebs_volume_type       = "gp3"
instance_type         = "t3.micro"
ami_name              = "/golden-ami/rhel8/latest"
private_vpc_id        = "/common/network/application/vpc/id"
priavte_subnet_a      = "/common/network/application/subnet/a"
private_subnet_b      = "/common/network/application/subnet/b"
//private_subnet_c      = "/common/network/application/subnet/c"

KmsKeyId              = "/common/kms/workload_cmk_arn"
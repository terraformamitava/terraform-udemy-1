
variable "security_name_placeholder" { 
    description = "security group name"
    default = ""
}
variable "securitygroup_private_vpc" { 
    description = "management vpc id"
    default = ""
}

variable "cidr_with_desc_80" { 
    description = "cidr blocks for port 80 from VDI or local"
    type = map(string)
}
variable "cidr_with_desc_443_https" { 
    description = "cidr blocks for port 443 from VDI"
    type = map(string)
}
variable "cidr_with_desc_8531_sccm" { 
    description = "cidr blocks for port 8531"
    type = map(string)
}
variable "cidr_with_application_vpc" { 
    description = "cidr blocks for port 9091 and 9443"
    type = map(string)
}

variable "cidr_with_desc_221" { 
    description = "cidr blocks for port "
    type = map(string)
}

variable "common_tags" {} 

variable "private_subnet_a" {} 
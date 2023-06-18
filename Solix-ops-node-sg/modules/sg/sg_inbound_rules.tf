# HTTPS - Client Machines
resource "aws_security_group_rule" "sg_rule_tcp_443" {

    for_each           = var.cidr_with_desc_443_https

    type               = "ingress"
    from_port          = 443
    to_port            = 443
    protocol           = "6"
    security_group_id  = aws_security_group.solix_security_group.id
    
    cidr_blocks        = [each.value]
    description        = each.key

}

# HTTP - client machine
resource "aws_security_group_rule" "sg_rule_tcp_80" {

    for_each           = var.cidr_with_desc_80

    type               = "ingress"
    from_port          = 80
    to_port            = 80
    protocol           = "6"
    security_group_id  = aws_security_group.solix_security_group.id
    
    cidr_blocks        = [each.value]
    description        = each.key

}

# NonProd AWS workloads to AWS SCCM (SCCM Client --> WSUS and Software update point)
resource "aws_security_group_rule" "sg_rule_tcp_8531_sccm" {

    for_each           = var.cidr_with_desc_8531_sccm

    type               = "ingress"
    from_port          = 8531
    to_port            = 8531
    protocol           = "6"
    security_group_id  = aws_security_group.solix_security_group.id
    
    cidr_blocks        = [each.value]
    description        = each.key

}

resource "aws_security_group_rule" "sg_rule_tcp_9091" {

    for_each           = var.cidr_with_application_vpc

    type               = "ingress"
    from_port          = 9091
    to_port            = 9091
    protocol           = "6"
    security_group_id  = aws_security_group.solix_security_group.id
    
    cidr_blocks        = [each.value]
    description        = each.key

}

resource "aws_security_group_rule" "sg_rule_tcp_9443" {

    for_each           = var.cidr_with_application_vpc

    type               = "ingress"
    from_port          = 9443
    to_port            = 9443
    protocol           = "6"
    security_group_id  = aws_security_group.solix_security_group.id
    
    cidr_blocks        = [each.value]
    description        = each.key

}

resource "aws_security_group_rule" "sg_rule_tcp_22" {

    for_each           = var.cidr_with_desc_221

    type               = "ingress"
    from_port          = 22
    to_port            = 22
    protocol           = "6"
    security_group_id  = aws_security_group.solix_security_group.id
    
    cidr_blocks        = [each.value]
    description        = each.key

}
#i/p ports - 9091,443 and 9443
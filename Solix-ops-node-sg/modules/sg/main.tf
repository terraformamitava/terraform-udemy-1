resource "aws_security_group" "solix_security_group" {

    revoke_rules_on_delete     = true

    lifecycle {

        create_before_destroy = true
    }

    name         = "scdp_${var.security_name_placeholder}_cn_security_group"
    description  = "This security group built for SCDP ${var.common_tags.Environment} environment coortinator node"
    vpc_id       = var.securitygroup_private_vpc


    tags         = merge({ "Name" = "scdp_${var.security_name_placeholder}_cn_security_group"},{ "Description" = "This security group built for SCDP ${var.common_tags.Environment} environment coordinator node"},var.common_tags)

}





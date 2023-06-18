resource "aws_security_group_rule" "sg_outbound_rule_all_traffic" {

    type                = "egress"
    from_port           = 0
    to_port             = 0
    protocol            = "-1"
    cidr_blocks         = ["0.0.0.0/0"]
    security_group_id   = aws_security_group.solix_security_group.id
    description         = "Allowing all traffic to outbound"
    
}
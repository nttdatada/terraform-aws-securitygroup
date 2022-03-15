# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 14 Mar 2022
# MODULE TERRAFORM AWS SECURITY GROUP


resource "aws_security_group_rule" "sg_rules" {
  
    count               = length(var.sg_rules)

    type                = var.sg_rules[count.index].type
    from_port           = var.sg_rules[count.index].from_port
    to_port             = var.sg_rules[count.index].to_port
    protocol            = var.sg_rules[count.index].protocol
    cidr_blocks         = var.sg_rules[count.index].cidr_blocks
    description         = var.sg_rules[count.index].description
    security_group_id   = var.sg_rules[count.index].security_group_id

}
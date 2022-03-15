# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 14 Mar 2022
# MODULE TERRAFORM AWS SECURITY GROUP

resource "aws_security_group" "security_group" {
    
    description = "AWS Security Group ${var.name_sg}"
    name        = var.name_sg
    vpc_id      = var.vpc_id

    tags        = merge({ "Name" = var.name_sg }, var.tags )
}

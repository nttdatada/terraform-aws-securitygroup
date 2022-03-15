# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 14 Mar 2022
# MODULE TERRAFORM AWS SECURITY GROUP

output "security_group_id" {    
    
    description = "AWS Security Group ID"
    value       = values(aws_security_group.security_group).*.id 
}


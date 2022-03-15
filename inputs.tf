# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 14 Mar 2022
# MODULE TERRAFORM AWS SECURITY GROUP


### AWS SG ###

variable "name_sg" {
    description = "Name of Security Group"
    type        = string
}

variable "vpc_id" {    
    description = "AWS VPC Id"
    type        = string
}

variable "environments" {    
    description = "Environments Developer/Production"
    type        = string
}

### AWS SG RULES ###
variable "sg_rules" {    
    type = list(object({        
        
        type            = string
        from_port       = number
        to_port         = number
        protocol        = string
        cidr_blocks     = string
        description     = string    
    }))
}

### TAGS ###
variable "tags" {} 
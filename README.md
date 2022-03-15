# terraform-aws-securitygroup

Repositório Módulo Terraform AWS Security Group

### PREREQUSITES


### SETUP

```shell

# Module
module "sg-example" {

    source          = ""

    name_sg         = ""
    vpc_id          = ""
    environments    = ""
    tags            = ""

    sg_rules = [

        {
            type        = "ingress"
            from_port   = 443
            to_port     = 443
            protocol    = "tcp"
            cidr_bloks  = "0.0.0.0/0"
            description = "Allow HTTPS"

        }
    ]
    
} 


# Environment

tags = {
    Environment = "stage"
    module      = "AWS RDS"
    Terraform   = true
    Organizarion = "NTTDATA"
    Departament = "DA"
}

```
### INFRA AS CODE

```shell
Terraform
Version:
```

### VERSION

```shell
Version: 
```

### CONSIDERATIONS

```shell

```

### LICESING

```shell
NTTDATA - DIGITAL ARCHITETECTURE
```

terraform {
  cloud { 
    organization = "krlabtfoct25" 
    workspaces { 
      name = "mytfrun" 
    } 
  } 
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
/*
module "mymod" {
  source  = "app.terraform.io/krlabtfoct25/tfec2/aws" // private module registry
  version = "3.1.0"
  aws_vpc_cidr = "172.16.0.0/16"
  ports_allow  = [80, 443]
  ec2_size     = "t2.micro"
  ssh_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5QqtH1y7NC/jJ8pOGzeQ90n8XuESQ+JMQovkhS/CFdGeh2Il0KDgFWvbxrkVUlnPEHCSTKEm92jLXfhlzGxX/5KSgkzRAgOQpsCP29nvjcFMVoyErcVen0KrQmhf7njg92lQIEyymNGNhd8b5gONXxHd0PpsOMT5wtvt9CZoN8aJu32+JT844xljp9tyirgptyJQdcjqb/rNKPh5vrRcPF4gRcQEMXRtLiXJfZ6Mg67/rLYO6oDrZSApG5oyS+JZx/g/mEuGeeVkOF+Ivc8Iq0AiWewJrjb/8e93lH14x5LaURkhZmRKIQfk7Fg5BRzIgboJBf8MvEDsBoftaOx2r vijay@virus"
}
output "the_ec2_ip" {
  value = module.mymod.ec2_ip
}
*/

terraform{
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version="4.36.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"  
}

resource "aws_vpc" "vpc_ualace" {
  cidr_block = "10.0.0.0/16"  
  enable_dns_hostnames = true
}

# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
# terraform apply - vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output
# terraform show - mostra como está a sua infra
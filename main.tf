terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  
}





# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
# terraform apply - vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output


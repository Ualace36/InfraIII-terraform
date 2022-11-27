<<<<<<< HEAD
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




=======
<<<<<<< HEAD
<<<<<<< HEAD
terraform {
  required_providers {
    aws = {
      source="hashicorp/aws"
      version="4.36.1"
    }
  }
}
provider "aws" {
  region = "us-east-1"  
}
resource "aws_vpc" "vpc_ualace" {
  cidr_block = "10.0.0.0/16"  
  enable_dns_hostnames = true
}
resource "aws_subnet" "publicSubnetUalace" {
  vpc_id =aws_vpc.vpc_ualace.id
  cidr_block = "10.0.1.0/24"
  
}
resource "aws_subnet" "privateSubnetUalace" {
  vpc_id = aws_vpc.vpc_ualace.id
  cidr_block = "10.0.2.0/24"
  
}
resource "aws_instance" "ualaceServer" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  tags = {
    Name = "UalaceServer"
  }
}
# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
# terraform apply - vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output
=======
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
>>>>>>> 0acfedb28f14906a748cf9d1e57ea55b3c8d754e
=======
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
>>>>>>> f06f07614bb5eac80b5f8d29bb064d43fb7044fa

# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
# terraform apply - vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output
<<<<<<< HEAD

=======
>>>>>>> 0acfedb28f14906a748cf9d1e57ea55b3c8d754e
# terraform show - mostra como está a sua infra
>>>>>>> f06f07614bb5eac80b5f8d29bb064d43fb7044fa

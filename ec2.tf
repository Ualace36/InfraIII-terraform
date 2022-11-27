# resource "aws_vpc" "vpc_ualace" {
#   cidr_block = "10.0.0.0/16"  
#   enable_dns_hostnames = true
# }
# resource "aws_subnet" "publicSubnetUalace" {
#   vpc_id =aws_vpc.vpc_ualace.id
#   cidr_block = "10.0.1.0/24"
  
# }
# resource "aws_subnet" "privateSubnetUalace" {
#   vpc_id = aws_vpc.vpc_ualace.id
#   cidr_block = "10.0.2.0/24"
  
# }
resource "aws_instance" "ualaceServer" {
  count = 2
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [ aws_security_group.sg_acesso_ssh_publico.id]
  tags = {
    Name = "UalaceServer-${count.index}"
  }
}

# resource "aws_key_pair" "terraform-aws2" {
#     key_name   = "terraform-aws"
#     public_key = file("terraform-aws.pub")
# }

# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
# terraform apply - vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output

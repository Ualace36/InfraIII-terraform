resource "aws_key_pair" "deployer" {
  key_name   = "terraform-aws"
  public_key = file("./terraform-aws.pub.")
}
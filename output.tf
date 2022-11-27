output "instnacias_ec2"{
    value = aws_instance.ualaceServer.*.public_ip
}
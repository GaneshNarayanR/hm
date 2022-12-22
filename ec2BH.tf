#provider "aws" {
#  region = "ap-south-1"
#}
data "aws_security_group" "InfraAutomationSec" {
  id = "sg-06d02ad49d31d8a4a"
}

resource "aws_instance" "BH-server" {
  ami                         = "ami-0970493a7b0c3720c"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-0b65c657630390199"
  key_name                    = "GH-Dev"
  vpc_security_group_ids      = [data.aws_security_group.InfraAutomationSec.id]
  associate_public_ip_address = "true"
  tags = {
    Name          = "BH-server"
    developername =  var.Dname
  }
}

output "server_id1" {
  value = aws_instance.BH-server.id
}

output "server_public_ip" {
  value = aws_instance.BH-server.public_ip

}

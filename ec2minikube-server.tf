#provider "aws" {
#  region = "ap-south-1"
#}


resource "aws_instance" "minikube-server" {
  ami                    = "ami-092acb0ad96892d9d"
  instance_type          = "t2.medium"
  subnet_id              = "subnet-08f19cb0d3a88a8c7"
  key_name               = "GH-Dev"
  vpc_security_group_ids = [data.aws_security_group.InfraAutomationSec.id]

  tags = {
    Name          = "minikube-server"
    developername =  var.Dname
  }
}

output "server_id" {
  value = aws_instance.minikube-server.id
}

output "server_private_ip" {
  value = aws_instance.minikube-server.private_ip

}



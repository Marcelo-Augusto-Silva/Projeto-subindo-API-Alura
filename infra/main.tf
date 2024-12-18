terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.regiao_aws
}

resource "aws_instance" "app_server" {
  ami           = "ami-0075013580f6322a1"
  instance_type = var.instancia
  key_name = var.chave

  
  tags = {
    Name = var.nome_instancia
  }
}


resource "aws_key_pair" "chaveSSH" { # Recurso para mandar as chaves SSH na AWS
  key_name = var.chave # nome da chave SSH
  public_key = file("${var.chave}.pub") # Passando o arquivo com a chave ssh

}

output "IP_publico" { # Pegar o Ip publico da maquina
  value       = aws_instance.app_server.public_ip
}

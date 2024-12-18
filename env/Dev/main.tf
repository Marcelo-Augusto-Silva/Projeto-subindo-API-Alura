module "aws-dev" {
    source = "../../infra"
    regiao_aws = "us-west-2"
    instancia = "t2.micro"
    nome_instancia = "Maquina Desenvolvimento"
    chave = "IAC-Dev"
    nome_grupo_seguranca = "Grupo Desenvolvimento"

}

output "IP" {
    value = module.aws-dev.IP_publico
}
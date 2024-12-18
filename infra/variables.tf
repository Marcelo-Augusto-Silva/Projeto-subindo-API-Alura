# Nesse arquivo nós declaramos quais variaveis iremos utilizar
variable "regiao_aws" {
  type = string
  description = "Essa variavel serve para dizer qual regiao a AWS irá usar"
}

variable "chave" {
    type = string
    description = "Essa variavel serve para dizer qual será a chave ssh"
}
variable "instancia" {
    type = string
    description = "Essa variavel serve para dizer qual instancia irá usar"
}

variable "nome_grupo_seguranca" {
  type = string
  description = "Essa variavel serve para especificar o nome do grupo de segurança de acordo com o ambiente "
}

variable "nome_instancia" {
    type = string
    description = "Essa variavel define o nome da instancia da maquina"
}
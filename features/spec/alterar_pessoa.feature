#language: pt

Funcionalidade: Realizar alterações no cadastro de Pessoas
Como usuário da API de Pessoas
Eu quero realizar requisições na api
A fim de alterar cadastros de pessoas

@alterar_pessoa_valida
Cenário: Alterar pessoa com dados válidos
    Dado que o usuário possua um nome já cadastrado para uma pessoa
    E que o usuário possua dados válidos para alterar uma pessoa
    Quando o usuário efetuar a requisição para alterar essa pessoa
    Então é retornado o status code 200
    E os dados da response do PUT devem estar de acordo com o que foi enviado na request

@alterar_pessoa_invalida
Cenário: Alterar pessoa inválida
    Dado que o usuário possua um nome '<invalido>' para uma pessoa
    E que o usuário possua dados válidos para alterar uma pessoa
    Quando o usuário efetuar a requisição para alterar essa pessoa
    Então é retornado o status code 404
    E a '<mensagem>' de erro é retornada

    Exemplos:
    |invalido |mensagem       |
    |e23198fef|Nao Encontrado!|
    |         |Nao Encontrado!|
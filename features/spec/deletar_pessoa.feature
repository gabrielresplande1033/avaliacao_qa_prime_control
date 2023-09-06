#language: pt

Funcionalidade: Realizar deleções na API de Pessoas
Como usuário da API de Pessoas
Eu quero realizar requisições na api
A fim de deletar cadastros de pessoas

@deletar_pessoa_valida
Cenário: Deletar pessoa com nome válido
    Dado que o usuário possua um nome já cadastrado para uma pessoa
    Quando o usuário efetuar a requisição para deletar essa pessoa
    Então é retornado o status code 204

@deletar_pessoa_invalida
Cenário: Deletar pessoa com nome inválida
    Dado que o usuário possua um nome '<invalido>' para uma pessoa
    Quando o usuário efetuar a requisição para deletar essa pessoa
    Então é retornado o status code 404
    E a '<mensagem>' de erro é retornada

    Exemplos:
    |invalido |mensagem       |
    |e23198fef|Nao Encontrado!|
    |         |Nao Encontrado!|

#language: pt

Funcionalidade: Consultar cadastro de pessoas
Como usuário da API de Pessoas
Eu quero realizar requisições na api
A fim de consultar cadastros de pessoas

@retornar_pessoa_valida
Cenário: Retornar pessoa válida
    Dado que o usuário possua um nome já cadastrado para uma pessoa
    Quando o usuário efetuar a requisição para retornar essa pessoa
    Então é retornado o status code 200
    E os dados da response do GET devem estar de acordo com o que foi enviado na request

@retornar_pessoa_invalida
Cenário: Retornar pessoa inválida
    Dado que o usuário possua um nome '<invalido>' para uma pessoa
    Quando o usuário efetuar a requisição para retornar essa pessoa
    Então é retornado o status code 404
    E a '<mensagem>' de erro é retornada

    Exemplos:
    |invalido |mensagem       |
    |e23198fef|Nao Encontrado!|
    |         |Nao Encontrado!|

@retornar_pessoa_alterada
Cenário: Retornar pessoa alterada pelo endpoint PUT
    Dado que o usuário possua um nome já alterado através do PUT
    Quando o usuário efetuar a requisição para retornar essa pessoa
    Então é retornado o status code 200
    E os dados da response do GET devem estar de acordo com o que foi enviado na request

@retornar_pessoa_deletada
Cenário: Retornar pessoa já deletada pelo endpoint DELETE
    Dado que o usuário possua um nome já deletado através do DELETE
    Quando o usuário efetuar a requisição para retornar essa pessoa
    Então é retornado o status code 404
    E a 'Nao Encontrado!' de erro é retornada
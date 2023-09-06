#language: pt

Funcionalidade: Realizar cadastro de Pessoas
Como usuário da API de Pessoas
Eu quero realizar requisições na api
A fim de cadastrar pessoas

@cadastrar_pessoa_valida
Cenário: Cadastrar pessoa com dados válidos
    Dado que o usuário possua dados válidos para cadastrar uma pessoa
    Quando o usuário efetuar a requisição para cadastrar uma nova pessoa
    Então é retornado o status code 200
    E os dados inseridos são retornados na response

@cadastrar_pessoa_parametro_invalido
Cenário: Cadastrar pessoa com parâmetro nome inválido
    Dado que o usuário possua dados válidos para cadastrar uma pessoa com o parâmetro nome '<nome_invalido>'
    Quando o usuário efetuar a requisição para cadastrar uma nova pessoa
    Então é retornado o status code 400
    E a '<mensagem>' de erro é retornada

    Exemplos:
    |nome_invalido     |mensagem                                                                                           |
    |Usuario Existente |nome ja adicionado                                                                                 |
    |Numero Inteiro    |É obrigatório informar pelo menos um nome para criar um cadastro!Json de Exemplo: nome:primeironome|
    |Nulo              |É obrigatório informar pelo menos um nome para criar um cadastro!Json de Exemplo: nome:primeironome|
    |                  |nome ja adicionado                                                                                 |

@cadastrar_pessoa_sem_nome
Cenário: Cadastrar pessoa sem parâmetro nome
    Dado que o usuário possua dados válidos para cadastrar uma pessoa sem o parâmetro nome
    Quando o usuário efetuar a requisição para cadastrar uma nova pessoa
    Então é retornado o status code 400
    E a '<mensagem>' de erro é retornada

    Exemplos:
    |mensagem                                                                                           |
    |É obrigatório informar pelo menos um nome para criar um cadastro!Json de Exemplo: nome:primeironome|
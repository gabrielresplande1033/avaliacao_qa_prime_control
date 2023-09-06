# Objetivo
Projeto tem como principal objetivo a avaliação do teste proposto pela PrimeControl.

# Tecnologias utilizadas
- [Ruby](https://www.ruby-lang.org/pt/)**(3.1.4)**
- [Cucumber](https://cucumber.io/)
- [HTTParty](https://www.rubydoc.info/github/jnunemaker/httparty/HTTParty/ClassMethods)
  
# Funcionalidades
- Automação dos Cenários de cadastro de Pessoas - Endpoint POST (Positivo e Negativo)
- Automação dos Cenários de retorno de Pessoas - Endpoint GET (Positivo e Negativo)
- Automação dos Cenários de deleção de Pessoas - Endpoint DELETE (Positivo e Negativo)
- Automação dos Cenários de alteração de Pessoas - Endpoint PUT (Positivo e Negativo)

# Abordagens Utilizadas
- Organização do projeto em classes de serviços
- Cenários independentes que facilitam o reuso
- Reutilização de Cenários
- Dados dinâmicos
- Cenários declarativos para facilitar o entendimento e execução no alto nível e também na automação de testes
- Separação dos cenários de teste por funcionalidade

# Como executar os testes da API
Para executar os testes da API deve-se possuir instalado o **Ruby**, **Bundle**, clonar o projeto e executar os seguintes comandos dentro da raiz do projeto:
- *bundle install* (para instalar as dependências)
- *cucumber* (para executar todos os cenários de teste)

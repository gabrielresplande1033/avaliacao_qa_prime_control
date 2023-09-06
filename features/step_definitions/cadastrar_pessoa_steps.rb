Dado('que o usuário possua dados válidos para cadastrar uma pessoa') do
    @request_body = YAML.load_file(PAYLOAD_PATH['cadastrar_pessoa'])
    @request_body['nome'] = faker_nome_completo
    @request_body['email'] = faker_email
    @request_body['idade'] = faker_idade
    @request_body['sexo'] = faker_random_genero
    @request_body['profissao'] = faker_profissao
end

Quando('o usuário efetuar a requisição para cadastrar uma nova pessoa') do
    @response = pessoa.post_cadastrar_pessoa(@request_body)
    puts "Método POST - Status Code " + @response.code.to_s
end

Então('é retornado o status code {int}') do |status_code|
    expect(@response.code).to eq(status_code)
end

Então('os dados inseridos são retornados na response') do
    expect(@response['nome']).to eq @request_body['nome']
    expect(@response['email']).to eq @request_body['email']
    expect(@response['idade']).to eq @request_body['idade']
    expect(@response['sexo']).to eq @request_body['sexo']
    expect(@response['profissao']).to eq @request_body['profissao']
end  

Dado('que o usuário possua dados válidos para cadastrar uma pessoa com o parâmetro nome {string}') do |nome_invalido|
    @request_body = YAML.load_file(PAYLOAD_PATH['cadastrar_pessoa'])
    case nome_invalido
    when "Numero Inteiro"
        @request_body['nome'] = faker_random_int
    when "Nulo"
        @request_body['nome'] = nil
    else
        @request_body['nome'] = nome_invalido
    end
    @request_body['email'] = faker_email
    @request_body['idade'] = faker_idade
    @request_body['sexo'] = faker_random_genero
    @request_body['profissao'] = faker_profissao
end

Então('a {string} de erro é retornada') do |mensagem|
    retorno_response = @response['data'].to_str.gsub(/[^A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ!: ]/, '')
    expect(retorno_response).to eq(mensagem)
end

Dado('que o usuário possua dados válidos para cadastrar uma pessoa sem o parâmetro nome') do
    @request_body = YAML.load_file(PAYLOAD_PATH['cadastrar_pessoa_sem_nome'])
    @request_body['email'] = faker_email
    @request_body['idade'] = faker_idade
    @request_body['sexo'] = faker_random_genero
    @request_body['profissao'] = faker_profissao
end

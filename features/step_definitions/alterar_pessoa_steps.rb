Dado('que o usuário possua dados válidos para alterar uma pessoa') do
    @request_body = YAML.load_file(PAYLOAD_PATH['alterar_pessoa'])
    @request_body['email'] = faker_email
    @request_body['idade'] = faker_idade
    @request_body['sexo'] = faker_random_genero
    @request_body['profissao'] = faker_profissao
end

Quando('o usuário efetuar a requisição para alterar essa pessoa') do
    @response = pessoa.put_alterar_pessoa(@request_body, @nome)
    puts "Método PUT - Status Code " + @response.code.to_s
end

Então('os dados da response do PUT devem estar de acordo com o que foi enviado na request') do
    expect(@response['data']['email']).to eq @request_body['email']
    expect(@response['data']['idade']).to eq @request_body['idade']
    expect(@response['data']['sexo']).to eq @request_body['sexo']
    expect(@response['data']['profissao']).to eq @request_body['profissao']
end
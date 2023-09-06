Dado('que o usuário possua um nome já cadastrado para uma pessoa') do
    step "que o usuário possua dados válidos para cadastrar uma pessoa"
    step "o usuário efetuar a requisição para cadastrar uma nova pessoa"
    @nome = @response['nome']
end

Quando('o usuário efetuar a requisição para retornar essa pessoa') do
    @response = pessoa.get_retornar_pessoa(@nome)

    puts "Método GET - Status Code " + @response.code.to_s
end

Então('os dados da response do GET devem estar de acordo com o que foi enviado na request') do
    expect(@response['data']['nome']).to eq @nome
    expect(@response['data']['email']).to eq @request_body['email']
    expect(@response['data']['idade']).to eq @request_body['idade']
    expect(@response['data']['sexo']).to eq @request_body['sexo']
    expect(@response['data']['profissao']).to eq @request_body['profissao']
end

Dado('que o usuário possua um nome {string} para uma pessoa') do |nome_invalido|
    @nome = nome_invalido
end

Dado('que o usuário possua um nome já alterado através do PUT') do
    step "que o usuário possua um nome já cadastrado para uma pessoa"
    step "que o usuário possua dados válidos para alterar uma pessoa"
    step "o usuário efetuar a requisição para alterar essa pessoa"
end

Dado('que o usuário possua um nome já deletado através do DELETE') do
    step "que o usuário possua um nome já cadastrado para uma pessoa"
    step "o usuário efetuar a requisição para deletar essa pessoa"
end

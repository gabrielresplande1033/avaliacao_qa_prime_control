Quando('o usuário efetuar a requisição para deletar essa pessoa') do
    @response = pessoa.delete_pessoa(@nome)

    puts "Método DELETE - Status Code " + @response.code.to_s
end
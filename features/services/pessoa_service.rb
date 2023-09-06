class Pessoa
    include HTTParty
    base_uri $uri_base_url

    def initialize()
        self.class.headers "Content-Type" => "application/json;charset=UTF-8"
    end

    def post_cadastrar_pessoa(request_body)
        self.class.post("/pessoa", body: request_body.to_json)
    end

    def get_retornar_pessoa(nome)
        self.class.get("/nome/#{ERB::Util.url_encode(nome)}")
    end

    def put_alterar_pessoa(request_body, nome)
        self.class.put("/nome/#{ERB::Util.url_encode(nome)}", body: request_body.to_json)
    end

    def delete_pessoa(nome)
        self.class.delete("/nome/#{ERB::Util.url_encode(nome)}")
    end

end
#language: pt
@cadastro
Funcionalidade: Cadastro de usuário API
Como um usuário do sitema
Quero realizar as requisições na API

    Cenário: Cadastrar usuário
        Dado o endereço da API para cadastro
        Quando Realizo uma requisição para cadastro
        Então a API irá retornar os dados do cadastro com o código 201

    Cenário: Cadastro com o mesmo email
        Quando Realizo uma requisição para cadastro com o mesmo email
        Então a API irá retornar os dados do cadastro com o código  422

    Cenário: Cadastro sem a senha
        Quando Realizo uma requisição para cadastro sem a senha
        Então a API irá retornar os dados do cadastro com o código  422

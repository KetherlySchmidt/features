#language: pt

Funcionalidade: Autenticação
    Contexto: Abrir Cadastro
        Dado que esteja na home
        Quando abrir o cadastro
 
        Esquema do Cenário: Realizar Cadastro
            Quando realizar cadastro com "<email>" e "<senha>" e "<CPF>"
            Então deverá ser exibido <mensagem>
 
            Exemplos:
                | email             | senha    | CPF       | mensagem               |
                | test@teste        | 12345    | 152346984 | cadastrado com sucesso |
 
        Esquema do Cenário: Realizar Cadastro Exception
            Quando realizar cadastro com "<email>" e "<senha>" e "<CPF>"
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
                | email              | senha     | CPF       | mensagem                                                    |
                | test@teste         | 12345     | 152346984 | Cadastro não pode ser realizado, verifique seus dados       |
                | teste@testando     | 123456    | 695482348 | Email ja cadastrado, verifique seus dados e tente novamente |
#language: pt

Funcionalidade: Autenticação

    Contexto: Abrir login
        Dado que esteja na home
        Quando abrir Login
 
        Esquema do Cenário: Realizar Login
            Quando realizar login com "<email>" e "<senha>"
            Então deverá ser exibido o nome do usuário no header
 
            Exemplos:
                | email             | senha    |
                | test@teste        | 12345    | 
 
        Esquema do Cenário: Realizar Login Exception
            Quando realizar login com "<email>" e "<senha>"
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
               | email              | erro                        | mensagem                 |
               | teste@testando     | login ou senha invalidos    | login ou senha invalidos | 

 
        Cenário: Realizar Cadastro
            Quando realizar cadastro
            Então deverá ser exibido mensagem "Cadastro realizado com sucesso"
 
        Esquema do Cenário: Realizar Cadastro Exception
            Quando realizar cadastro com "<email>" e "<senha>"
            Então deverá ser exibida a mensagem de erro "<mensagem>"
 
            Exemplos:
                | Erro                   | mensagem                                                     |
                | Usuario já cadastrado  | Email ja cadastrado, verifique seus dados e tente novamente  |
                | Informações invalidas  | Cadastro não pode ser realizado, verifique seus dados        |
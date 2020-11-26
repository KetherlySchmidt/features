#language: pt

Funcionalidade: Produto

    Cenário: Seleção de produto pela home
        Dado que esteja na home
        Quando selecionar o produto
        Então deverá ser exibido a pagina do produto

    Cenário: Seleção de produto por categoria
        Dado que esteja na home
        Quando abrir categoria do produto
        E selecionar o produto
        Então deverá ser exibido a pagina do produto

    Cenário: Seleção de produto pela busca
        Dado que esteja na home
        Quando pesquisar o produto na barra de busca
        E selecionar o produto
        Então deverá ser exibido a pagina do produto

    Cenário: Seleção de produto pela busca Exception
        Dado que esteja na home
        Quando pesquisar o produto na barra de busca
        Então deverá ser exibida a mensagem de erro "<mensagem>"

    Cenário: Seleção de produto pela página do produto
        Dado que esteja na home
        Quando abrir a página do produto
        Então deverá ser exibido a pagina do produto

    Cenário: Seleção de produto pela sugestão
        Dado que esteja na home
        Quando pesquisar o produto na barra de busca
        E selecionar o produto sugerido na barra
        Então deverá ser exibido a pagina do produto

    Contexto: Abrir lista de desejos
        Dado que esteja na home
        Quando abrir a lista de desejos
    
        Esquema do Cenário: Seleção de produto pela lista de desejos           
            Quando selecionar o produto
            Então deverá ser exibido a pagina do produto

        Esquema do Cenário: Seleção de produto pela lista de desejos Exception
            Então deverá ser exibida a mensagem de lista vazia "<mensagem>"
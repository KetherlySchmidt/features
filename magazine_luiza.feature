#language: pt

Funcionalidade: Sacola
    Cenário: Adicionar produto à sacola pela pesquisa
        Dado que esteja na home
        Quando pesquisar por computador
        E abrir pagina do primeiro computador
        E adicionar à sacola
        Então deverá ser exibido o produto na sacola
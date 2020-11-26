#language: pt

Funcionalidade: Sacola
    Cenário: Adicionar produto à sacola pela pesquisa
        Dado que esteja na home
        Quando pesquisar por "<produto>"
        E abrir pagina do "<produto>"
        E adicionar à sacola
        Então deverá ser exibido a sacola
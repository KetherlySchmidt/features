#language: pt

Funcionalidade: Pesquisar no Google
    Cenário: Pesquisar batata
        Dado que esteja na pagina do google
        Quando digitar batata na barra de Pesquisar
        E ir na barra imagens
        E abrir a primeira imagem
        Então deverá ser exibido a imagem da batata
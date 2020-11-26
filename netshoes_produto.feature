#language: pt

Funcionalidade: Produto

 Contexto: Home
    Dado que esteja na home

        Cenário: Seleção de produto pela home
            Quando abrir pagina do produto 'camiseta adidas'
            E adicionar ao carrinho
            Então deverá ser exibido o produto no carrinho

        Esquema do Cenário: Seleção de produto por categoria
            Quando selecionar a "<categoria>"
            E abrir pagina do "<produto>"
            E adicionar ao carrinho
            Então deverá ser exibido o produto no carrinho

            Exemplos:
               | Categoria     | Produto      | 
               | Casual        | camiseta     | 
               | Corrida       | tenis        | 
               | Futebol       | chuteira     | 
               | Suplementos   | coqueteleira | 
           
        Cenário: Seleção de produto pela busca
            Quando pesquisar na barra de busca o produto 'tenis de basquete'
            E abrir a pagina do produto
            E adicionar ao carrinho
            Então deverá ser exibido o produto no carrinho

        Cenário: Seleção de produto pela sugestão
            Quando pesquisar na barra de busca o produto 'bicicleta'
            E acessar a pagina do produto sugerido
            E adicionar ao carrinho
            Então deverá ser exibido o produto no carrinho
       
        Cenário: Seleção de produto pela lista de desejos
            Quando abrir a lista de desejos
            E adicionar ao carrinho
            Então deverá ser exibido o produto no carrinho

        Cenário: Seleção de produto pela lista de desejos Exception
            Quando abrir a lista de desejos           
            Mas não houver nenhum produto adicionado a lista de desejo
            Então deverá ser exibido a mensagem 'Você ainda não possui itens salvos na sua lista de desejo'
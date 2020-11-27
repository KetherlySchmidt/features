#language: pt

Funcionalidade: Produto

    Contexto: Home
        Dado que esteja na home

        Cenário: Seleção de produto pela home
            Quando abrir pagina do produto 'camiseta adidas'
            E adicionar ao carrinho
            Então deverá ser exibido o produto no carrinho

        Esquema do Cenário: Seleção de produto por categoria
            Quando selecionar a categoria "<categoria>"
            E selecionar o primeiro produto
            E adicionar o produto ao carrinho
            Então deverá ser exibido o produto no carrinho

            Exemplos:
               | Categoria     | 
               | Casual        | 
               | Corrida       | 
               | Futebol       |  
               | Suplementos   | 
           
        Cenário: Seleção de produto pela busca
            Quando pesquisar por "<busca>"
            E selecionar o primeiro produto
            E adicionar o produto ao carrinho
            Então deverá ser exibido o produto no carrinho

        Cenário: Seleção de produto pela sugestão
            Quando pesquisar por "<busca>"
            E selecionar o primeiro produto sugerido
            E adicionar o produto ao carrinho
            Então deverá ser exibido o produto no carrinho
       
        Cenário: Seleção de produto pela lista de desejos
            Quando abrir a lista de desejos
            E adicionar o primeiro produto ao carrinho
            Então deverá ser exibido o produto no carrinho

        Cenário: Seleção de produto pela lista de desejos Exception
            Quando abrir a lista de desejos           
            Mas não houver nenhum produto adicionado a lista de desejo
            Então deverá ser exibido a mensagem 'Você ainda não possui itens salvos na sua lista de desejo'
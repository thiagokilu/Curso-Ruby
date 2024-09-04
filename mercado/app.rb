require_relative 'mercado'
require_relative 'produto'

produto = Produto.new
produto.nome = 'Achocolatado'
produto.preco = '8.99'

mercado = Mercado.new(produto)
mercado.comprar
mercado.adicionarProduto
mercado.exibirPrateleira
class Mercado
  def initialize(produto)
    @produto = produto
    @prateleira = {}
  end

  def comprar
    puts "Vocẽ comprou o #{@produto.nome} no valor de #{@produto.preco}"
  end

  def adicionarProduto
    @prateleira[@produto.nome] = @produto
  end

  def exibirPrateleira
    puts "Produtos na prateleira:"
    @prateleira.each_value do |produto|
      puts "#{produto.nome} - R$#{produto.preco}"
    end
  end
  

  
end

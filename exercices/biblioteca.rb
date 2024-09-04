class Livro
  attr_reader :titulo, :autor, :disponivel
  def initialize(nome, autor, disponivel)
    @titulo = nome
    @autor = autor
    @disponivel = disponivel
  end

  def exibir
    puts "Titulo: #{@titulo} Autor: #{@autor} Disponível: #{@disponivel}"
  end
end

class Biblioteca

def initialize()
  @estante = {}

end

def adicionarLivro(livro)
 @estante[livro.autor] = livro
end

def exibirEstante
puts "Livros na estante:"
@estante.each_value { |livro| livro.exibir }
end

end

def entrada(biblioteca)
puts "Iforme o nome do livro"
nome = gets.chomp()
puts "Informe o autor"
autor = gets.chomp()
puts "dispinivel true or false"
disponivel = gets.chomp.downcase == 'true'

livro1 = Livro.new(nome, autor, disponivel)
biblioteca.adicionarLivro(livro1)
puts "Deseja continuar s/n"
resposta = gets.chomp.downcase
resposta
end

def main
  biblioteca = Biblioteca.new
  resposta = 's'
  while resposta != 'n' do
    resposta = entrada(biblioteca)
  end

  biblioteca.exibirEstante
end

# Executa a função principal
main

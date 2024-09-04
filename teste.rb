def soma_indices_pares(entrada1, entrada2)
  resultado = []

  entrada1.each_with_index do |valor, indice|
    if indice.even?  # Verifica se o índice é par
      soma = valor + entrada2[indice]  # Soma os valores correspondentes nas duas listas
      resultado << soma  # Adiciona a soma à lista de resultados
    end
  end

  resultado
end

# Testes
entrada1_1 = [20, 21, 22, 23, 24]
entrada2_1 = [2, 3, 4, 5, 6]
puts soma_indices_pares(entrada1_1, entrada2_1).inspect
entrada1_2 = [10, 10, 20, 20, 30, 30, 40, 40]
entrada2_2 = [1, 1, 1, 1, 1, 1, 1, 1]
puts soma_indices_pares(entrada1_2, entrada2_2).inspect
entrada1_3 = [1, 2, 3, 4, 5, 6]
entrada2_3 = [1, 2, 3, 4, 5, 6]
puts soma_indices_pares(entrada1_3, entrada2_3).inspect
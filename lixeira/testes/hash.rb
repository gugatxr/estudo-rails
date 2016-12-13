nomes = ['Gustavo', 'Maria', 'José']

nomes.each do |nome|
   puts "Olá, #{nome}" 
end

pessoa = {nome: 'Gustavo', idade: 20}
puts pessoa[:nome]
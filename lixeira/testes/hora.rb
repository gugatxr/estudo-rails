puts "Como você se chama"
nome = gets

hora  = Time.now.hour

if hora > 0 and hora < 12 
   puts "Bom dia, #{nome}!" 
elsif hora > 12 and hora < 18
    puts "Boa tarde, #{nome}"
else
    puts "Boa noite, #{nome}"
end

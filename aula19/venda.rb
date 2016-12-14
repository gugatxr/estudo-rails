require_relative "pagamento"
require_relative "frete"

class Venda
  include Pagamento
  include Frete

  PRODUTOS = Array.new
  PRODUTOS.push({ :id => 1, :descricao => "PS3", :valor => 900.00})
  PRODUTOS.push({ :id => 2, :descricao => "PS4", :valor => 1600.00})
  def imprimir_produtos
    puts "--- Produtos ---"

    PRODUTOS.each do |v|
      puts "#{v[:id]} - #{v[:descricao]} - #{SIMBOLO_MOEDA} #{v[:valor]}"
    end

    puts "-----------------"
  end

  def vender
    puts "Olá! Seja bem-vindo!"
    puts "O que deseja comprar?"

    imprimir_produtos

    puts ">Digite o código do produto..."

    produto  = gets.chomp.to_i
    # produto  = produto.to_i

    puts "Para onde deseja enviar?"

    imprimir_tabela_frete

    puts "> Digite o estado:"

    uf = gets.chomp

    puts "Calculando..."


    valor_final = calcular_valor_final(PRODUTOS[produto][:valor], uf)

    puts "Você deve pagar #{Pagamento::SIMBOLO_MOEDA} #{valor_final} do produto + frete."

    puts "Deseja pagar? (S/N)"
    opcao = gets.chomp

    if opcao == "S"
      pagseguro  = Pagamento::Pagseguro.new
      pagar(valor_final)
    else
      puts "OK! Fica para a próxima! :("
    end
  end
end

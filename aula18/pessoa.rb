class Pessoa 
   attr_accessor @@nome, @@dataNascimento
   
    def addSobrenome nome
           @@nome = @@nome << nome
    end
end
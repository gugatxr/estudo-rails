require 'mysql'

con = Mysql.new('localhost', 'gus', 'Gust4v0;', 'ruby')

resposta = con.query('select * from produtos')
resposta.each_hash{ |v| puts v['descricao'] }
con.close

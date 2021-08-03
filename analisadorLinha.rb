  
class AnalisadorLinha
  
  def initialize (linha, conteudo)
    @linha = linha
    @conteudo = conteudo
    @palavras = cont(@conteudo)
  end

  def cont(conteudo)
    frequencia = Hash.new(0)
    palavraf = 0
  

    frequenciaf = conteudo.split(" ")

    frequenciaf.each do |palavra|

      if frequencia.has_key? palavraf
        frequencia[palavra] += 1 else frequencia[palavra] = 1
      end
      if frequencia[palavra] > palavraf
        palavraf = frequencia[palavra]
      end
    end
  end
end

arquivo = File.open('texto.txt', 'r')
linha = File.readlines(arquivo)

array = []
linha.each_with_index do |n, i| 
  array.push(AnalisadorLinha.new(i+1, n)) 
end 

array.each do |l| 
  puts "Linha #{l.linha} 
  Palavra: #{l.palavras.keys} 
  Palavra Frequencia: #{l.frequencia}
  "
  
end
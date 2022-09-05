require 'cmath'
class Calculadora
 
  #Soma dois valores  
  def somar(valor1,valor2)      
      resultado = valor1+valor2
      resultado.round(1)
    end
  
    #Subtrai dois valores 
    def subtrair(valor1,valor2)
      resultado = valor1-valor2
      resultado.round(1)
    end
  
    #Multiplica dois valores 
    def multiplicar(valor1,valor2)
      return "Não é possivel multiplicar por 0" if valor2 == 0
      resultado = valor1*valor2
      resultado.round(1)
    end
  
    #Faz a divisão de dois valores 
    def dividir(valor1,valor2)
      return "Não é possivel dividir por 0" if valor2 == 0 
      resultado = valor1/valor2
      resultado.round(1)
    end

    #Eleva valor a uma potência 
    def potenciacao(valor1,valor2)
      return "Não é possivel elevar valor a 0" if valor2 == 0
      resultado = valor1**valor2
      resultado.round(1)
    end

    #Calcula a porcentagem
    def porcentagem(porc,valor)
      return "Não é possivel medir a porcentagem por 0" if valor == 0       
      resultado = porc * valor/ 100
      resultado.round(1)
    end

    #Extrai a raiz quadrada de um valor
    def raizQuad(valor)
      return "Não é possivel extrair raiz quadrada de valor negativo" if valor < 0      
      resultado = CMath.sqrt(valor).round(1)
    end
  
  end
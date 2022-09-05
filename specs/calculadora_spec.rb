require 'rspec'
require 'pry'
require 'cmath'
require_relative '../src/calculadora'

describe ('Calculadora') do
    calculadora = Calculadora.new

#Teste SOMA
    it('Deve somar dois valores inteiros positivos') do
        expect(calculadora.somar(3,7)).to eq 10
    end

    it('Deve somar um valor qualquer com 0') do
        expect(calculadora.somar(6,0)).to eq 6
    end

    it('Deve somar dois valores inteiros negativos') do
        expect(calculadora.somar(-4,-8)).to eq -12
    end

    it('Deve somar dois valores inteiro com um negativo')do
        expect(calculadora.somar(12,-5)).to eq 7
    end

    it('Deve somar dois valores flutuantes positivos')do
        expect(calculadora.somar(5.6,4.4)).to eq 10
    end

    it('Deve somar dois valores flutuantes negativos')do
        expect(calculadora.somar(-6.3,-2.2)).to eq -8.5
    end

    it('Deve somar dois valores flutuantes com um negativo')do
        expect(calculadora.somar(3.2,-4.7)).to eq -1.5
    end

    it('Não deve somar um valor qualquer com uma String')do
        expect(calculadora.somar(15,"a")).to eq ("Valor inserido invalido")
    end

#Teste Subtrair
    it('Deve subtrair dois valores inteiros positivos') do
        expect(calculadora.subtrair(20,3)).to eq 17
    end

    it('Deve subtrair dois valores inteiros negativos') do
        expect(calculadora.subtrair(-10, -5)).to eq -5
    end

    it('Deve subtrair dois valores inteiros com um negativo') do
        expect(calculadora.subtrair(13, -3)).to eq 16
    end

    it('Deve subtrair dois valores flutuantes positivos') do
        expect(calculadora.subtrair(8.6, 2.1)).to eq 6.5
    end

    it('Deve subtrair dois valores flutuantes negativos')do
        expect(calculadora.subtrair(-7.5, -9.4)).to eq 1.9
    end

    it('Deve subtrair dois valores flutuantes com um negativo')do
        expect(calculadora.subtrair(7.5, -9.4)).to eq 16.9
    end

    it('Não deve subtrair um valor qualquer com uma String')do
        expect(calculadora.subtrair(3, "b")).to eq ("Valor inserido invalido")
    end

    
#Teste Multiplicar
    it('Deve multiplicar dois valores inteiros positivos') do
        expect(calculadora.multiplicar(6,3)).to eq 18
    end

    it('Deve multiplicar dois valores inteiro negativos') do
        expect(calculadora.multiplicar(-3, -5)).to eq 15
    end

    it('Deve multiplicar dois valores inteiros com um negativo') do
        expect(calculadora.multiplicar(-3, 4)).to eq -12
    end

    it('Deve multiplicar dois valores flutuantes positivos') do
        expect(calculadora.multiplicar(6.3, 4.2)).to eq 26.5
    end

    it('Deve multiplicar dois valores flutuantes negativos')do
        expect(calculadora.multiplicar(-7.2, -3.4)).to eq 24.5
    end

    it('Deve multiplicar dois valores flutuantes com um negativo')do
        expect(calculadora.multiplicar(2.7, -4.3)).to eq -11.6
    end

    it('Não deve multiplicar um valor qualquer com uma String')do
        expect(calculadora.multiplicar(9, "c")).to eq ("Valor inserido invalido")
    end

#Teste Dividir
    it('Deve dividir dois valores inteiros positivos') do
        expect(calculadora.dividir(40,4)).to eq 10
    end

    it('Deve dividir dois valores inteiros negativos') do
        expect(calculadora.dividir(-20, -2)).to eq 10
    end

    it('Deve dividir dois valores inteiros com um negativo') do
        expect(calculadora.dividir(-12, 2)).to eq -6
    end

    it('Deve dividir dois valores flutuantes positivos') do
        expect(calculadora.dividir(15.8, 5.2)).to eq 3.0
    end

    it('Deve dividir dois valores flutuantes negativos')do
        expect(calculadora.dividir(-18.6, -6.5)).to eq 2.9
    end

    it('Deve dividir dois valores flutuantes com um negativo')do
        expect(calculadora.dividir(16.5, -5.6)).to eq -2.9
    end

    it('Não deve dividir um valor qualquer por uma String')do
        expect(calculadora.dividir(6, "d")).to eq ('Valor inserido invalido')
    end

    it('Não deve dividir um valor qualquer por 0')do
        expect(calculadora.dividir(4,0)).to eq ("Não é possivel dividir por 0")
    end

#Teste Potenciação
    it('Deve elevar dois valores inteiros positivos') do
        expect(calculadora.potenciacao(4, 2)).to eq 16
    end
   
    it('Deve elevar dois valores com um negativo') do
        expect(calculadora.potenciacao(-2, 10)).to eq 1024
    end

    it('Deve elevar dois valores flutuantes positivos') do
        expect(calculadora.potenciacao(2.2, 5.3)).to eq 65.3
    end

    it('Deve elevar dois valores flutuantes com um negativo') do
        expect(calculadora.potenciacao(7.6, -4.3)).to eq 0.0
    end

    it('Não deve elevar um valor qualquer com uma String') do
        expect(calculadora.potenciacao(7, "e")).to eql ("Valor inserido invalido")
    end

    it('Não deve elevar um valor qualquer com 0')do
        expect(calculadora.potenciacao(6,0)).to eq ("Não é possivel elevar valor a 0")
    end

#Teste Porcentagem
    it('Deve exibir a porcentagem de dois valores inteiros positivos')do
        expect(calculadora.porcentagem(50,30)).to eq 15
    end

    it('Deve exibir a porcentagem de dois valores inteiros negativos')do
        expect(calculadora.porcentagem(-20,-20)).to eq 4
    end

    it('Deve exibir a porcentagem de dois valores flutuantes positivos')do
        expect(calculadora.porcentagem(40.5,75.4)).to eq 30.5
    end

    it('Deve exibir a porcentagem de dois valores flutuantes negativos')do
        expect(calculadora.porcentagem(-40.5,-75.4)).to eq 30.5
    end

    it('Deve exibir a porcentagem de dois valores flutuantes com um negativo')do
        expect(calculadora.porcentagem(60.4,-87.5)).to eq -52.9
    end

    it('Não deve exibir a porcentagem de um valor qualquer com uma String')do
        expect(calculadora.porcentagem(30,"f")).to eq ("Valor inserido invalido")
    end

    it('Não deve exibir a porcentagem de um valor qualquer por 0')do
        expect(calculadora.porcentagem(90,0)).to eq ("Não é possivel medir a porcentagem por 0")
    end

#Teste Raiz Quadrada
    it('Deve exibir a raiz quadrada de um valor inteiro positivo')do
        expect(calculadora.raizQuad(9)).to eq 3
    end

    it('Não deve extrair a raiz quadrada de um valor inteiro negativo')do
        expect(calculadora.raizQuad(-9)).to eq ("Não é possivel extrair raiz quadrada de valor negativo")
    end

    it('Deve extrair a raiz quadrada de um valor flutuante positivo')do
        expect(calculadora.raizQuad(25.2)).to eq 5.0
    end

    it('Não deve extrair a raiz quadrada de um valor flutuante negativo')do
        expect(calculadora.raizQuad(-25.2)).to eq ("Não é possivel extrair raiz quadrada de valor negativo")
    end

    it('Não deve extrair a raiz quadrada de uma String')do
        expect(calculadora.raizQuad("g")).to eq ("Valor inserido invalido")
    end

    it('Deve extrair a raiz quadrada de 0')do
        expect(calculadora.raizQuad(0)).to eq 0
    end
    
end

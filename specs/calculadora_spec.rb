require 'rspec'
require 'pry'
require_relative '../src/calculadora'

describe ('Calculadora') do
    calculadora = Calculadora.new

    it('Deve somar dois inteiros positivos') do        
        expect(calculadora.somar(4,5)).to eq 9
    end

    it('Deve somar um numero qualquer com 0') do        
        expect(calculadora.somar(9,0)).to eq 9
    end

    it('Deve somar numeros negativos') do        
        expect(calculadora.somar(-9,-10)).to eq -19
    end

    it('Deve subtrair dois inteiros positivos') do              
        expect(calculadora.subtrair(20,3)).to eq 17
    end

    it('Deve multiplicar dois inteiros positivos') do        
        expect(calculadora.multiplicar(6,3)).to eq 18
    end

    it('Deve dividir dois inteiros positivos') do        
        expect(calculadora.dividir(20,4)).to eq 5
    end
end

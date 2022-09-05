# Testes automatizados com Ruby 

Este repositório apresenta um sistema que realiza testes automatizados em uma calculadora com a utilização do Desenvolvimento orientado a Testes TDD(Test Driven Development) a linguagem de programação Ruby e as gems RSpec, pry e cmath. 

## Apresentação

O sistema de testes automatizados torna possivel verificar se a calculadora esta em seu perfeito estado de funcionamento analizando se os cálculos estao sendo feitos de maneira correta, incluindo as seguintes operações: soma, subtração, multiplicação, divisão, potenciação, porcentagem e raiz quadrada.

### Pré requisitos

Para começar a utilizar a calculadora é necessário atender os seguintes pré-requisitos:

* [Ruby 3.1+](http://rubyinstaller.org/downloads/)
* [Cmder](https://github.com/cmderdev/cmder)
* [Gems RSpec, Pry, cmath](Gemfile)
* [NodeJS](https://nodejs.org/en/)
* [Git](https://git-scm.com/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Chromedriver](http://chromedriver.chromium.org/downloads)

### Instalação

No sistema operacional Windows, baixe o instalador do Ruby para prosseguir.

Executar o instalador Ruby:<br/>
Instalar no diretório "C:/Ruby31x64"<br/>
Marcar a opção "Add Ruby executables to your Path"<br/>
Marcar a opção "Associate .rb and .rbw files with this Ruby installantion".

Instalação das Gems<br/>
Executar os seguintes comandos no Cmder:
```
gem install win32console
gem install bundler
gem install ruby-debug-ide
```
Instalação Visual Studio Code<br/>
1.Executar o instalador:<br/>
a. Selecionar a opção “Add ‘Open with Code’ action to Windows Explorer file context menu”<br/>
b. Selecionar a opção “Add ‘Open with Code’ action to Windows Explorer directory context menu”<br/>
2. Abrir o VSCode e ir em File > Preferences > Settings;<br/>
3. Pesquisar por "http.proxyStrictSSL" e setar para false;

Instalar as seguintes extensões no VScode:
* Ruby
* Snippets and Syntax Highlight for Gherkin (Cucumber)
* Gherkin Indent
* EditorConfig
* Ruby Solargraph

Instalação do Chromedriver<br/>
1.Executar os seguintes comandos no Cmder:
```
npm config set strict-ssl false
npm install -g chromedriver
```
2. Baixar a versão do chromedriver correspondente a versão do Chrome instalada na sua máquina.
3. Extrair o zip e adicionar o arquivo .exe no diretório “C:\Ruby31-x64\bin”

Para obter os testes e a calculadora em sua maquina, basta clonar o repositório para o diretório local que desejar.
```
git clone https://github.com/chrisOsilva/RealityStone_Christian_Oliveira_da_Silva_Compass.git
```

## Execução dos testes

Para executar os testes é necessario clonar o repositório em uma pasta local<br/>
Abra a pasta para ter acesso aos arquivos<br/>
Execute o terminal Cmder com o botão direito do mouse dentro da pasta, de o comando a seguir para abrir o VScode:
```
code .
```
Com o terminal Cmder aberto acesse a pasta "../specs/" e execute o comando:
```
rspec calculadora_spec.rb
```
Os testes começam automaticamente.

## Tecnologias utilizadas
* [TDD] Test Driven Development - Desenvolvimento orientado a testes
* [Ruby] (https://www.ruby-lang.org/pt/)

## Autores

Olá, me chamo Christian e estou cursando Sistemas para Internet, este projeto vem do Programa de Bolsas de Automação de testes front-end com Ruby da Compass.UOL, como uma forma de estudar a linguagem Ruby e a prática de TDD.

### Contato
* [chrissilva3330@gmail.com](chrissilva3330@gmail.com)
* [Linkedin](https://www.linkedin.com/in/christian-oliveira-da-silva/)

## Contribuidores
[Compass](https://compass.uol)- Larissa Campos

## License

[MIT LICENSE](https://github.com/chrisOsilva/RealityStone_Christian_Oliveira_da_Silva_Compass/blob/develop/LICENSE)

## Créditos
* [Medium](https://medium.com/@pablodarde/testes-unit%C3%A1rios-com-tdd-test-driven-development-657f3dadad06)
* [DevMedia](https://www.devmedia.com.br/test-driven-development-tdd-simples-e-pratico/18533)
* [Tecmundo](https://www.tecmundo.com.br/software/155909-5-passos-desenvolvimento-orientado-testes-tdd.htm#:~:text=O%20que%20%C3%A9%20Desenvolvimento%20Orientado%20a%20Testes%20(TDD)%3F&text=Em%20vez%20de%20desenvolver%2C%20primeiramente,requisitos%20do%20teste%20j%C3%A1%20definido.)

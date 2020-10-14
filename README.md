# Automação do site das Americanas

### Pré-requisitos

- É necessário ter instalados: Ruby (2.6.6p146), Console Emulator e o VSCode.
- Clonar este repositório.
- Na pasta do projeto clonado, via Console Emulator, instalar as dependências:
  - bundle install
    - caso seja exibida alguma informação de comando inválido, utilizar antes:
      ```
        gem install bundler
      ```

- Verificar a versão do Chrome instalado na máquina. Com a versão do Chrome em mãos, baixar o chromedriver compatível em: https://chromedriver.chromium.org/downloads e colocar o executável na pasta C:\Windows

### Para execução da automação

- Com todos os itens de pré-requisitos configurados, basta digitar o seguinte comando na raiz do projeto:
```
  rspec -fd
```

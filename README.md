# PrimeiroCrowdFunding

Desenvolvimento de Smart Contract para criação de Financiamento Coletivo desenvolvido durante treinamento do professor Pietro Martins de Oliveira (https://profpietro.com/curso-solidity-basico/).

## Tecnologias Utilizadas

- Solidity: Linguagem de Programação Orientada a Smart Contracts
- Remix: Ethereum IDE
- Ethereum Unit Converter: Conversor de valores Wei para quantias em Ethereum

## Como Usar

1. Clone este repositório dentro da IDE Remix:
Acessar online a IDE Remix e caminhar até a sessão "Git", aonde encontrara a aba "Clone"

```bash
git clone https://github.com/6uilhermeTeixeira/CrowdFunding.git
```

2. Realize a compilação e o Deploy do contrato na IDE Remix
  - Após clonar repositório, no explorador de arquivos caminhar até o arquivo "Crowdfunding.sol" no caminho ../contracts/Crowdfunding.sol
  - Após abrir arquivo "Crowdfunding.sol" caminhar até o "Solidity Compiler" no menu lateral e clicar em "Compile Crowdfunding.sol"
  - Após Compilar caminhar até "Deploy & run transactions" no menu lateral
  - No campo "Environment" selecionar "Remix VM (Cancun)" que ira gerar 10 carteiras de teste para você transionar valores dentro do contrato.
  - No campo "Contract" Selecionar "Crowdfunding - contracts/Crowdfunding.sol"
  - Por fim clicar em "Deploy"

3. Interagir com o contrato para realizar simulação de financiamento coletivo
  - Após realizar o deploy na Remix IDE, no campo "Account", trocar o endereço que ira interagir com o contrato
  - Após trocar o endereço, acessar o site https://eth-converter.com/ e converter um valor de 10 Ether para Wei
  - Dentro da Remix IDE caminhar até o campo "Value" e colar o valor de 10 Ethers em Wei que sera 10000000000000000000 Wei
  - Caminhar até "Deployed Contracts" no menu lateral, havera diversas opções, começaremos com "fund"
  - Você pode perceber que havera um campo "balance" que agora tera o valor de 10 Ether
  - Se clicar no campo "Owner" podera verificar o endereço proprietario do contrato, o mesmo endereço que você utilizou para realizar o deploy do contrato
  - Você só podera utilizar a função do campo "Withdraw" caso o endereço selecionado em "Account" for o mesmo do deploy do contrato
  - E podera utilizar a função "addressToAmountFunders" para verificar quanto cada endereço contribuiu para o financiamento coletivo
  - Na função "Funders" você podera conferir em sequencia quais os endereços doadores
  - Agora é só trocar de endereços e calcular novos valores de Wei para interagir com o contrato.

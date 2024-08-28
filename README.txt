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

# Espaço de Trabalho Padrão REMIX

O espaço de trabalho padrão do Remix está presente quando:
i. O Remix carrega pela primeira vez
ii. Um novo espaço de trabalho é criado com o modelo 'Padrão'
iii. Não há arquivos existentes no Explorador de Arquivos

Este espaço de trabalho contém 3 diretórios:

1. 'contracts': Contém três contratos com níveis crescentes de complexidade.
2. 'scripts': Contém quatro arquivos typescript para implantar um contrato. É explicado abaixo.
3. 'tests': Contém um arquivo de teste Solidity para o contrato 'Ballot' e um arquivo de teste JS para o contrato 'Storage'.

SCRIPTS

A pasta 'scripts' tem quatro arquivos typescript que ajudam a implementar o contrato 'Storage' usando as bibliotecas 'web3.js' e 'ethers.js'.

Para a implantação de qualquer outro contrato, basta atualizar o nome do contrato de 'Storage' para o contrato desejado e fornecer argumentos do construtor de acordo
com o arquivo `deploy_with_ethers.ts` ou `deploy_with_web3.ts`

Na pasta 'tests' há um script contendo testes unitários Mocha-Chai para o contrato 'Storage'.

Para executar um script, clique com o botão direito no nome do arquivo no explorador de arquivos e clique em 'Run'. Lembre-se, o arquivo Solidity já deve estar compilado.
A saída do script aparecerá no terminal do remix.

Observe que require/import é suportado de forma limitada para módulos suportados pelo Remix.
Por enquanto, os módulos suportados pelo Remix são ethers, web3, swarmgw, chai, multihashes, remix e hardhat somente para o objeto/plugin hardhat.ethers.
Para módulos não suportados, um erro como este será lançado: '<module_name> module require is not supported by Remix IDE' será exibido.

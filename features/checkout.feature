#language: pt

    Funcionalidade: Tela de Cadastro Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Contexto:
    Dado que eu esteja na página de checkout da EBAC-SHOP

    Esquema do Cenário: Preencher informações obrigatórias
    Quando eu preencher os campos obrigatórios com
    | Nome               | <nome>      |
    | Sobrenome          | <sobrenome> |
    | País               | <pais>      |
    | Endereço           | <endereco>  |
    | Cidade             | <cidade>    |
    | CEP                | <cep>       |
    | Telefone           | <telefone>  |
    | Endereço de e-mail | <email>     |
    E clicar no botão "FINALIZAR COMPRA"
    Então o cadastro deve ser concluído

    Exemplos:
    | nome           | sobrenome | pais   | endereco             | cidade | cep       | telefone     | email                                  |
    | Paulo Mateus   | Mota      | Brasil | Rua RN 8, 100        | Palmas | 77062-146 | 63 982673897 | paulo-damota70@ymail.com               |
    | Maitê Priscila | Pereira   | Brasil | Rua Conde Irajá, 561 | Maceió | 57030-150 | 82 988894288 | maitepriscilapereira@milimoveis.com.br |

    Esquema do Cenário: Cadastro com e-mail inválido
    Dado que os demais campos obrigatórios estejam preenchidos
    Quando eu preencher o campo "Endereço de e-mail" com <email>
    E clicar no botão "FINALIZAR COMPRA"
    Então deve ser exibida uma mensagem de erro

    Exemplos:
    | email                                   |
    | paulo-damota70@ymail,com                |
    | maitepriscilapereiramilimoveis.com.br   |
    | teresinha_dacruz@operaconstrutora.combr |
    | caue_novaes@jonhdeere..com              |

    Esquema do Cenário: Cadastro com campo obrigatório vazio
    Dado que os demais campos obrigatórios estejam preenchidos
    Quando eu deixar o campo <campo> vazio
    Então o sistema deve exibir uma mensagem de alerta

    Exemplos:
    | campo              |
    | Nome               |
    | Sobrenome          |
    | País               |
    | Endereço           |
    | Cidade             |
    | CEP                |
    | Telefone           |
    | Endereço de e-mail |
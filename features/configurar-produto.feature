#language: pt

    Funcionalidade: Configurar Produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho, gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
    Dado que eu acesse a página do produto no site da EBAC-SHOP

    Esquema do Cenário: Verificar campos obrigatórios
    Dado que os demais campos obrigatórios estejam preenchidos
    Quando eu deixar o campo <campo> sem preenchimento
    E eu clicar no botão "COMPRAR"
    Então o produto não deve ser adicionado ao carrinho

    Exemplos:
    | campo      |
    | Cor        |
    | Tamanho    |
    | Quantidade |

    Esquema do Cenário: Verificar limite de produtos por venda
    Dado que o carrinho esteja vazio
    E que os campos obrigatórios estejam preenchidos
    Quando eu informar a quantidade <quantidade>
    E clicar no botão "COMPRAR"
    Então o sistema deve <resultado>

    Exemplos:
    | quantidade | resultado                      |
    | 9          | permitir adicionar ao carrinho |
    | 10         | permitir adicionar ao carrinho |
    | 11         | impedir a adição ao carrinho   |

    Cenário: Restaurar configuração original do produto
    Dado que eu tenha configurado o produto com informações diferentes das originais
    Quando eu clicar no botão "Limpar"
    Então os campos de cor, tamanho e quantidade devem retornar ao estado original
#language: pt

    Funcionalidade: Realizar login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer o login na plataforma
    Para visualizar meus pedidos

    Contexto:
    Dado que eu acesse a página de login da EBAC-SHOP

    Cenário: Autenticação com dados válidos
    Quando eu informar o usuário "natalia_moura@academiagolf.com.br"
    E a senha "kcm53kBKbM"
    E clicar no botão "LOGIN"
    Então devo ser direcionado para a tela de checkout

    Esquema do Cenário: Autenticação com dados inválidos
    Quando eu informar o usuário <usuario>
    E a senha <senha>
    E clicar no botão "LOGIN"
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

    Exemplos:
    | usuario                           | senha       |
    | natalia_moura@academiagolf.com.br | kcm45kBKbM, |
    | nataliamoura@academiagolf,com.br  | kcm53kBKbM  |
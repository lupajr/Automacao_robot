language:brazilian portuguese
*** Settings ***
Resource    keywords/login.resource
Resource    keywords/cadastro.resource
Resource    keywords/loja.resource
Library     DebugLibrary

*** Test Cases ***

cenário: teste de cadastro bem-sucedido
    [tags]    teste  
    Dado que abro Navegador
    Quando clico em cadastre-se 
    E digito um nome
    E digito um email
    E digito uma senha
    E clico em cadastrar
    Então deverá ser criada uma conta
    E o navegador irá fechar 

cenário: teste de Login Bem-sucedido
    [tags]    teste
    Dado que abro Navegador
    Quando insiro um email valido
    E insiro uma senha 
    E clico em entrar 
    Então deverá aparecer mensagem de sucesso

cenário: adicionando item a lista
    [tags]    teste
    Dado que esteja logado no sistema
    Quando selecionar para adicionar um produto na lista de compras 
    Então deverá ter um produto na lista de compras 

cenário: validar detalhes de produtos
    Dado que esteja logado no sistema
    Quando selecionar para adicionar um produto na lista de compras 
    E clicar em detalhes do produto
    Então deverá validar os detalhes do produto
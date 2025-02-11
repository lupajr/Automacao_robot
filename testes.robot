language:brazilian portuguese
*** Settings ***
Resource    ./keywords/login.Resource
Resource    ./keywords/cadastro.resource


*** Test Cases ***

cenário: teste de cadastro bem-sucedido
    [tags]    @teste  
    Dado que abro Navegador
    Quando clico em cadastre-se 
    E digito um nome
    E digito um email
    E digito uma senha
    E clico em cadastrar
    Então deverá ser criada uma conta
    E o navegador irá fechar 


cenário: Teste de Login Bem-sucedido
    [tags]    @teste
    Dado que abro Navegador
    Quando insiro um email valido
    E insiro uma senha 
    E clico em entrar 
    Então deverá aparecer mensagem de sucesso


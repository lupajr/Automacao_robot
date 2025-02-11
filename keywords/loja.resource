*** Settings ***
Library      Browser
Variables    ../page/login.yaml
Variables    ../page/loja.yaml
Resource     ../resource/variaveis.resource
Resource     ./login.resource

*** Keywords ***

que esteja logado no sistema
    que abro Navegador
    insiro um email valido
    insiro uma senha 
    clico em entrar 
    deverá aparecer mensagem de sucesso

selecionar para adicionar um produto no carrinho
    Click    selector
deverá ter um produto no carrinho
    Wait For Elements State    selector
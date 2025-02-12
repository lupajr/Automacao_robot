*** Settings ***
Library      Browser
Library    DebugLibrary
Library    String
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

selecionar para adicionar um produto na lista de compras 
    ${elementos}    Get Elements    ${button_adicionar_a_lista}  
    ${indice_aleatorio}    Evaluate    random.randint(0, len(${elementos}) - 1)  
    Click    ${elementos}[${indice_aleatorio}]  

deverá ter um produto na lista de compras 
    Wait For Elements State    ${txt_produto}    visible 
    Should Contain   ${txt_produto}    Produto
    
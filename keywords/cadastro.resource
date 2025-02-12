*** Settings ***
Library      Browser
Variables    ../page/cadastro.yaml
Variables    ../page/loja.yaml
Resource     ../resource/variaveis.resource

*** Keywords ***


clico em cadastre-se 
    Click    ${button_cadastrar-se}   
digito um nome
    Fill Text    ${input_cadastro_nome}    ${nome}
digito um email
    Fill Text    ${input_cadastro_email}    ${email}
digito uma senha
    Fill Text   ${input_cadastro_senha}    ${password}
clico em cadastrar
    Click    ${button_cadastrar}
deverá ser criada uma conta
    ${visivel}    Run Keyword And Return Status    Wait For Elements State    ${button_pesquisar}    visible    timeout=3s
    Run Keyword If    '${visivel}' == 'False'    Close Browser
    
*** Settings ***
Library      Browser
Variables    ../page/login.yaml
Variables    ../page/loja.yaml
Resource     ../resource/variaveis.resource

*** Keywords ***
que abro Navegador
    New Browser    chromium    headless=False
    New Page       https://front.serverest.dev/login
Quando insiro um email valido
    Fill Text    ${input_login_email}    ${email}
E insiro uma senha 
    Fill Text    ${input_login_senha}    ${password}
E clico em entrar 
    Click    ${button_entrar}
Então deverá aparecer mensagem de sucesso
    Wait For Elements State    ${button_pesquisar}    visible
o navegador irá fechar 
    Close Browser
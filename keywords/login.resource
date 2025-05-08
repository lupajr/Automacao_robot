*** Settings ***
Library      Browser
Variables    ../page/login.yaml
Variables    ../page/loja.yaml
Resource     ../resource/variaveis.resource

*** Keywords ***
que abro Navegador
    New Browser    chromium    headless=False
    New Page       https://front.serverest.dev/login
insiro um email valido
    Fill Text    ${input_login_email}    ${email}
insiro uma senha 
    Fill Text    ${input_login_senha}    ${password}
clico em entrar 
    Click    ${button_entrar}
deverá aparecer mensagem de sucesso
    Wait For Elements State    ${button_pesquisar}    visible
o navegador irá fechar 
    Close Browser

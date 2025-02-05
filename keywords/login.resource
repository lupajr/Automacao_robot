*** Settings ***
Library      Browser
Variables    ../page/login.yaml

*** Keywords ***
que abro Navegador
    New Browser    chromium    headless=False
    New Page       https://front.serverest.dev/login


o navegador irá fechar 
    Close Browser
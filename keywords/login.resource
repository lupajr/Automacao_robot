*** Settings ***
Library    Browser

*** Keywords ***
Abrir Navegador
    New Browser    chromium    headless=False
    New Page       https://front.serverest.dev/login

Fechar Navegador
    Close Browser
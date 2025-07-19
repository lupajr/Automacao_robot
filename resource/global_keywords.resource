*** Settings ***
Library      Browser

*** Keywords ***
Acessar pagina com sucesso
    New Browser    chromium    headless=True
    New Page       https://front.serverest.dev/login
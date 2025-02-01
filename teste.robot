language:brazilian portuguese
*** Settings ***
Resource    ./keywords/login.Resource



*** Test Cases ***
cenário: Teste de Login Bem-sucedido
    [tags]    @teste
    Dado Abrir Navegador
    
    E Fechar Navegador

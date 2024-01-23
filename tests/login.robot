*** Settings ***
Documentation    Testes de login

Resource    ../resources/base.resource

Test Setup    Start session
Test Teardown    Close session

*** Test Cases ***
Deve fazer login com sucesso
    Do login    admin    admin

    Wait Until Page Contains    Lista de Produtos    10

Não deve fazer login com senha incorreta
    Do login    admin    22222

    Wait Until Page Contains    Erro de autenticação    5


Não deve fazer login com usuario incorreto
    Do login    kennedy    admin

    Wait Until Page Contains    Erro de autenticação    5


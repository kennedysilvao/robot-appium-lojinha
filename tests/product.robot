*** Settings ***
Documentation    Testes de cadastro de produtos e componentes

Resource    ../resources/base.resource

Test Setup    Start session
Test Teardown    Close session

*** Test Cases ***
Deve cadastrar um produto com sucesso
    Do Login    admin    admin
    Go to add product
    Fill fields of product    Playstation 5    250.00    branco,preto

    Wait Until Page Contains    Produto adicionado com sucesso

Valor do produto não pode ser menor que 0,01
    Do login    admin    admin
    Go to add product
    Fill fields of product    Bicicleta    0.00    branco,vermelha

    Wait Until Page Contains    O valor do produto deve estar entre R$ 0,01 e R$ 7.000,00    10

Valor do produto não pode ser maior que R$ 7.000,00
    Do login    admin    admin
    Go to add product
    Fill fields of product    Iphone 15 PRO MAX    7.001,00    branco,vermelha

    Wait Until Page Contains    O valor do produto deve estar entre R$ 0,01 e R$ 7.000,00    10
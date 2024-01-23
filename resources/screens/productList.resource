*** Settings ***
Documentation    Elementos e ações da tela lista de produtos

Library    AppiumLibrary

*** Variables ***
${addProductButton}    //*[@resource-id="com.lojinha:id/floatingActionButton"]

*** Keywords ***
Go to add product

    Wait Until Element Is Visible    ${addProductButton}    10
    Click Element    ${addProductButton}


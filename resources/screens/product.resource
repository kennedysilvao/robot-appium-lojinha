*** Settings ***
Documentation    Elementos e ações da tela adicionar produto

Library    AppiumLibrary

*** Variables ***
${name_product}     xpath=//*[@resource-id="com.lojinha:id/editText"][@text="Nome"]
${value_product}    xpath=//*[@resource-id="com.lojinha:id/editText"][@text="Valor"]
${color_product}    xpath=//*[@resource-id="com.lojinha:id/editText"][@text="Cores"]
${btn_save}         xpath=//*[@resource-id="com.lojinha:id/button"][@text="SALVAR"]

*** Keywords ***
Fill fields of product
    [Arguments]    ${name}    ${value}    ${color}

    Input Text    ${name_product}    ${name}
    Input Text    ${value_product}    ${value}
    Input Text    ${color_product}    ${color}

    Click Element    ${btn_save}




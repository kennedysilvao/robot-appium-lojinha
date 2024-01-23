*** Settings ***
Documentation    Elementos e ações da tela de login


Library    AppiumLibrary

*** Variables ***
${input_user}    xpath=//*[contains(@text, "Usuário")][@resource-id="com.lojinha:id/editText"]
${input_pass}    xpath=//*[contains(@text, "Senha")][@resource-id="com.lojinha:id/editText"]
${submit_login}    xpath=//*[contains(@text, "ENTRAR")][@resource-id="com.lojinha:id/button"]

*** Keywords ***
Do login
    [Arguments]    ${user}    ${password}
    
    
    Wait Until Element Is Visible    ${input_user}    5

    Input Text    ${input_user}    ${user}
    Input Text    ${input_pass}    ${password}

    Click Element    ${submit_login}
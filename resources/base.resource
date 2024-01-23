*** Settings ***
Documentation    Tudo começa por aqui

Library    AppiumLibrary

Resource    screens/login.resource
Resource    screens/product.resource
Resource    screens/productList.resource


*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 automationName=uiautomator2
    ...                 platformName=Android
    ...                 deviceName=Estudos
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    ...                 app=${EXECDIR}/apps/lojinha-nativa.apk

    Wait Until Element Is Visible    xpath=//*[@resource-id="com.lojinha:id/loginForm"]    5

Close session
    Capture Page Screenshot
    Close Application
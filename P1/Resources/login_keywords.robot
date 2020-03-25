*** Settings ***
Library           SeleniumLibrary
Resource          locators.resource

*** Variables ***
${LOGIN URL}      https://www.chotot.com/
${BROWSER}        chrome

*** Keywords ***
Close browsers
    Close All Browsers

Input Phone number
    [Arguments]    ${phone_number_value}
    Wait Until Element Is Visible    ${telephone}    30 seconds
    Clear Element Text    ${telephone}
    Input Text    ${telephone}    ${phone_number_value}

Input password
    [Arguments]    ${password_value}
    Wait Until Element Is Visible    ${password}    30 seconds
    Clear Element Text    ${password}
    Input Text    ${password}    ${password_value}

Click Login Button
    Click Element    ${btnlogin}

Login By Telephone
    [Arguments]    ${telephone}    ${password}
    Input Phone number    ${telephone}
    Input password    ${password}
    Click Login Button

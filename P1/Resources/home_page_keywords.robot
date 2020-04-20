*** Settings ***
Library           SeleniumLibrary
Resource          locators.resource

*** Variables ***
${LOGIN URL}      https://www.chotot.com/
${BROWSER}        chrome

*** Keywords ***
Open Home Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    ${chrome_options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --disable-notifications
    SeleniumLibrary.Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1336    768
    Maximize Browser Window
    Go To    ${LOGIN URL}

Click On Menu More
    Wait Until Element Is Visible    ${menuMore}    30 seconds
    CLick Element    ${menuMore}

Select Login Menu Item On Menu More
    Wait Until Element Is Visible    ${login_Register_Menu}    30 seconds
    CLick Element    ${login_Register_Menu}

Should Be Login Succeess
    Click On Menu More
    Wait Until Element Is Visible    ${user_logout}    5 seconds
    Page Should Contain Element    ${user_logout}    1 seconds
    Capture Page Screenshot
    Click On Menu More

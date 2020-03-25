*** Settings ***
Suite Teardown    Close browsers
Library           SeleniumLibrary
Resource          ../Resources/login_keywords.robot
Resource          ../Resources/home_page_keywords.robot

*** Test Cases ***
Login Success By Using Telephone
    Open Home Page
    Click On Menu More
    Select Login Menu Item On Menu More
    Login By Telephone    0347869896    123456
    Should Be Login Succeess

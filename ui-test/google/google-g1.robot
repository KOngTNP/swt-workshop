*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Test search keyword and verify search result on google
    search url google
    search keyword us election 2020
    press enter
    find us election 2020 - BBC News

*** Keywords ***
search url google
    Open Browser    https://www.google.com    Chrome

search keyword us election 2020
    Input Text    name:q    us election 2020

press enter
    Press Keys    name:q    RETURN

find uselection2020-BBC News
    Page Should Contain    US Election 2020 - BBC News
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${username_fail}    xxxxx@xxxxx.com
${password_fail}    xxxxxxxxx

*** Test Cases ***
Test search keyword and verify search result on google
    search url facebook
    login facebook
    press login
    press post
    

*** Keywords ***
search url facebook
    Open Browser    https://www.facebook.com    Chrome

login facebook
    Input Text    email    ${username_fail}
    Input Password    pass    ${password_fail} 

press login
    Click Button    เข้าสู่ระบบ


press post
    Wait Until Page Contains    What's on your mind, Kong?
    Click Element    css: div.oajrlxb2.b3i9ofy5.qu0x051f.esr5mh6w.e9989ue4.r7d6kgcz
    Press Keys    None    สวัสดี robot framework
    Click Element    css: div.oajrlxb2.sli5eluu.qu0x051f.esr5mh6w.e9989ue4
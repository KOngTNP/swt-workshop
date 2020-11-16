*** Settings ***
Library    SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables ***

*** Test Cases ***
User ซื้อของเล่นให้ลูกสาว
    แสดงสินค้า
    แสดงรายละเอียดสินค้า
    จำนวนสินค้าที่ซื้อ
    นำสินค้าใส่ตระกร้า
    ยืนยันสั่งซื้อสิและชำระเงินด้วยบัตรเครดิตวิซ่าคาร์ด
    ขอบคุณครับ

*** Keywords ***
แสดงสินค้า
    Open Browser    https://dminer.in.th/Product-list.html    Chrome
    Element Should Contain    id=productName-1    expected=43 Piece Dinner Set
    Element Should Contain    id=productPrice-1    expected=12.95 USD

แสดงรายละเอียดสินค้า
    Click Button    id=viewMore-1
    Wait Until Element Contains    id=productName    43 Piece dinner Set


จำนวนสินค้าที่ซื้อ
    Input Text    id=productQuantity    text=1

นำสินค้าใส่ตระกร้า
    Click Button    id=addToCart

ยืนยันสั่งซื้อสิและชำระเงินด้วยบัตรเครดิตวิซ่าคาร์ด
    Wait Until Element Contains    id=totalProductPrice    12.95 USD
    Click Element    id=confirmPayment

    Wait Until Element Contains    id=totalPrice    241.90
    Input Text    id=cardNumber    text=4719700591590995
    Input Text    id=expiredMonth    text=7
    Input Text    id=expiredYear    text=20
    Input Text    id=cvv    text=752
    Input Text    id=cardName    text=Karnwat Wongudum

    Click Button    Payment


ขอบคุณครับ
    Wait Until Element Contains    id=title    ชำระเงินสำเร็จ

    
    


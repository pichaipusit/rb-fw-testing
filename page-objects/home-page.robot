*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${product_list}  id=tbodyid
${product_card}  css=a[href*="prod.html?idp_=1"]

*** Keywords ***
Verify that product list page is visible successfully
  Page Should Contain Element    ${product_list}

Click a product card
  Wait Until Page Contains Element    ${product_card}
  Click Element    ${product_card}
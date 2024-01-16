*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${add_to_cart_btn}  //a[normalize-space()='Add to cart']

*** Keywords ***
Verify that product detail page is visible successfully
  Wait Until Page Contains Element    ${add_to_cart_btn}
  Page Should Contain Element    ${add_to_cart_btn}

Add a products to cart
  ${new_name}  Get Text    css=.name
  Set Global Variable    ${PRODUCT_NAME}  ${new_name}
  Click Element    ${add_to_cart_btn} 
  Show alert  Product added

Show alert
  [Arguments]  ${message}
  Alert Should Be Present  ${message}
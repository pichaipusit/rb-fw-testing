*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/variables.robot

*** Variables ***
${cart_nav}  //a[@id='cartur']
${product_name_locator}  //tbody/tr[1]/td[2]
${delete-btn}  //a[normalize-space()='Delete']
${total_price_locator}  id=totalp

*** Keywords ***
Verify a product is added to cart
  Click Element    ${cart_nav}
  Verify a product name

Verify a product name
  Wait Until Page Contains Element    ${product_name_locator}
  ${actual_product_name}  Get Text    ${product_name_locator}
  Should Be Equal As Strings    ${actual_product_name}    ${PRODUCT_NAME}  Product name mismatch
  
Click 'Delete' to remove products from cart
  Click Element   ${delete-btn}
  Wait Until Page Does Not Contain    ${PRODUCT_NAME} 
Verify that product is removed from cart
  Page Should Not Contain Element    ${product_name_locator}
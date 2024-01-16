*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.demoblaze.com/index.html

*** Keywords ***
Start test case
  Open Browser  chrome
  Maximize Browser Window

Finish test case
  Close Browser

Navigate to web 'Product store'
  Go To    ${url}
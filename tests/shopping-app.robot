*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/common.robot
Resource  ../page-objects/home-page.robot
Resource  ../page-objects/cart-page.robot
Resource  ../page-objects/product-detail-page.robot

Test Setup  Start test case
Test Teardown  Finish test case

*** Test Cases ***
Test case 1: Add a product to cart
  Navigate to web 'Product store'
  Verify that product list page is visible successfully
  Click a product card
  Verify that product detail page is visible successfully
  Add a products to cart
  Verify a product is added to cart
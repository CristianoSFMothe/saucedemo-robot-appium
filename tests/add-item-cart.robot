*** Settings ***
Documentation   Tests for the add item to cart screen

Resource        ../resources/base.resource

Test Setup       Open App
Test Teardown    Close App

*** Test Cases ***

Open Product In Catalog Screen
    [Tags]             add_product
    [Documentation]    Add item to cart by name
  
    Open Product Details           Sauce Labs Backpack
    Add Product To Cart By Name    Sauce Labs Backpack
    
    

    
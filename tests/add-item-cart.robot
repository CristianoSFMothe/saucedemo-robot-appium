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

Add Product And Increase Quantity Product In Cart
    [Tags]             increase_qtd
    [Documentation]    Add item to cart and increase quantity

    Open Product Details            Sauce Labs Backpack
    ${final}=    Increase Product Quantity    Sauce Labs Backpack    2
    Click Button Cart
    Verify Total Price In Cart      $29.99    ${final}
*** Settings ***
Library    AppiumLibrary
Library    String
Library    JSONLibrary
Library    Collections
Library    BuiltIn

##### utils
Resource    ../resources/utils/customKeywords.resource
Resource    ../resources/utils/openApplication.resource

##### screen
Resource    ../resources/screen/catalog.resource
Resource    ../resources/screen/add-product-cart.resource


##### Variables
Variables    ../resources/locators/cart.yaml
Variables    ../resources/locators/common.yaml




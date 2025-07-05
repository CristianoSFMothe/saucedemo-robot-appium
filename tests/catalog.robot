*** Settings ***

Resource    ../resources/utils/openApplication.resource

Test Setup       Open App
Test Teardown    Close App

*** Test Cases ***

Open Home Screen
    [Tags]    catalog
    [Documentation]    Open the home screen of the app    

    Open Application Catalog Screen

Open Product In Catalog Screen
    [Tags]            catalog_product
    [Documentation]    Open a random product in the catalog screen
    
    Click Random Product By Name


  







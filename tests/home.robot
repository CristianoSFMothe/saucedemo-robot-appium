*** Settings ***

Resource    ../resources/utils/openApplication.resource

Test Setup       Open App
Test Teardown    Close App

*** Test Cases ***

Open Home Screen
     [Documentation]    Open the home screen of the app    

     Wait Until Text Is Visible     Products
     Wait Until Text Is Visible     Products




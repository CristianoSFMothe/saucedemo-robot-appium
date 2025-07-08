*** Settings ***
Documentation    Tests for the catalog screen of the app

Resource        ../resources/utils/openApplication.resource

Test Setup       Open App
Test Teardown    Close App


*** Test Cases ***

Open Home Screen
    [Tags]    catalog
    [Documentation]    Open the home screen of the app    

    Open Application Catalog Screen
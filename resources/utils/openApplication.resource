*** Settings ***

Resource    ../base.resource

*** Keywords ***
Open App
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/App/saucedemo.apk
    ...                 udid=emulator-5554
    
    
Close App
    Close Application    
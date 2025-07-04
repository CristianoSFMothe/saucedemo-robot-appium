*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Open Home Screen

     Open Application    http://localhost:4723
    ...    platformName=Android
    ...   deviceName=Android Emulator
    ...   automationName=UIAutomator2
    ...   app=${EXECDIR}/App/saucedemo.apk
    ...   udid=emulator-5554
  
  Wait Until Page Contains    Products

  Close Application
*** Settings ***

Resource    ../base.resource

*** Keywords ***
Wait Until Text Is Visible
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    timeout=10s
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='${text}']  
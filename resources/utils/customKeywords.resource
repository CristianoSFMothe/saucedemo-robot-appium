*** Settings ***

Resource    ../base.resource

*** Keywords ***
Wait Until Text Is Visible
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    timeout=10s
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text='${text}']  

Get Json Data
    [Arguments]    ${scenario}

    ${data}    Load Json From File    
    ...        ${EXECDIR}/resources/fixtures/data.json
    ...        encoding=utf-8
    

    RETURN    ${data}[${scenario}]
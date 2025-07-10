*** Settings ***

Resource    ../base.resource

*** Keywords ***
Wait Until Text Is Visible
    [Arguments]    ${text}
    Wait Until Page Contains         ${text}    timeout=10s
    Wait Until Element Is Visible    ${common.waitTextVisible.format(text='${text}')}

Get Json Data
    [Arguments]    ${scenario}

    ${data}    Load Json From File    
    ...        ${EXECDIR}/resources/fixtures/data.json
    ...        encoding=utf-8
    

    RETURN    ${data}[${scenario}]

Wait Button Is Visible
    [Arguments]    ${button_text}
    
    Wait Until Page Contains Element    
    ...    ${common.addToCart.format(text='${button_text}')}    
    ...    timeout=10s
    Wait Until Element Is Visible    
    ...    xpath=//android.widget.Button[@text='${button_text}']    

Verify Counter Increased
    [Arguments]    ${initial}    ${counter_locator}

    ${current}=    Get Text    ${counter_locator}
    Log    Current counter value: ${current}

    ${initial_int}=    Convert To Integer    ${initial}
    ${current_int}=    Convert To Integer    ${current}

    Should Be True    ${current_int} > ${initial_int}    msg=Counter did not increase!

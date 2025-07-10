*** Settings ***
Documentation    Keywords for add item to cart screen

Resource        ../base.resource

*** Keywords ***
# Click Random Product By Name
#     ${products}=    Get Json Data    products
#     ${count}=       Get Length    ${products}
#     ${index}=       Evaluate    random.randint(0, ${count} - 1)    modules=random
#     ${product}=     Get From List    ${products}    ${index}
#     ${name}=        Get From Dictionary    ${product}    name

#     Log To Console    Clicking on product: ${name}
#     Click Element     xpath=//android.widget.TextView[@text='${name}']  

#     Wait Until Text Is Visible     ${name}
#     Wait Until Text Is Visible     ${name}


Open Product Details
    [Arguments]    ${name}

    Wait Until Text Is Visible    ${name}
    Click Text                    ${name}
    Wait Until Text Is Visible    ${name}

Add Product To Cart By Name
    [Arguments]    ${name}
   
    Wait Until Text Is Visible    ${name}
    Click Element                 ${cart.addToCartButton}
   
    Wait Until Element Is Visible    ${cart.cartBadgeIcon} 

    ${badge}=    Get Text    ${cart.cartBadgeText}
    Should Be True    '${badge}' != ''
    Log To Console    Produto adicionado ao carrinho com quantidade: ${badge}

Increase Product Quantity
    [Arguments]    ${name}    ${quantity}    ${initial_value}=1

    Log    Initial value: ${initial_value}

    FOR    ${i}    IN RANGE    ${quantity}
        Click Element    ${cart.buttonPlus}
    END

    ${final_value}=    Evaluate    ${initial_value} + ${quantity}
    Log    Final expected value: ${final_value}

    ${locator}=    Set Variable    xpath=//android.widget.TextView[@text="${final_value}"]

    Wait Until Element Is Visible    ${locator}    timeout=10s
    Log    Counter updated to: ${final_value}

    Click Element    ${cart.addToCartButton}

*** Settings ***
Documentation    Keywords for add item to cart screen
Resource         ../base.resource

*** Keywords ***

Open Product Details
    [Arguments]    ${name}
    Wait Until Text Is Visible     ${name}
    Click Text                     ${name}
    Wait Until Text Is Visible     ${name}

Add Product To Cart By Name
    [Arguments]    ${name}
    Wait Until Text Is Visible     ${name}
    Click Element                  ${cart.addToCartButton}
    Wait Until Element Is Visible ${cart.cartBadgeIcon}

    ${badge}=    Get Text          ${cart.cartBadgeText}
    Should Be True                 '${badge}' != ''
    Log To Console                 Produto adicionado ao carrinho com quantidade: ${badge}

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

    RETURN   ${final_value}

Click Button Cart    
    Click Element                    ${cart.cartBadgeIcon}
    Wait Until Element Is Visible    ${cart.footerCart}    timeout=10s

Verify Total Price In Cart
    [Arguments]    ${unit_price}    ${final_value}

    ${displayed_total}=    Get Text    ${cart.totalPrice}
    Log    Total displayed: ${displayed_total}

    ${unit_price}=    Replace String    ${unit_price}    $    ${EMPTY}
    ${unit_price}=    Convert To Number    ${unit_price}
    ${expected_total}=    Evaluate    round(${unit_price} * ${final_value}, 2)

    ${displayed_total}=    Replace String    ${displayed_total}    $    ${EMPTY}
    ${displayed_total}=    Convert To Number    ${displayed_total}

    Should Be Equal As Numbers    ${displayed_total}    ${expected_total}
    Log    Total price validated: ${expected_total}



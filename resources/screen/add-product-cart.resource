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

    

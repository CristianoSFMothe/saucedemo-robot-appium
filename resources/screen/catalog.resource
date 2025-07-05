*** Settings ***

Resource    ../base.resource

*** Keywords **
Open Application Catalog Screen

  Wait Until Text Is Visible     Products
  Wait Until Text Is Visible     Products

Click Random Product By Name
    ${products}=    Get Json Data    products
    ${count}=       Get Length    ${products}
    ${index}=       Evaluate    random.randint(0, ${count} - 1)    modules=random
    ${product}=     Get From List    ${products}    ${index}
    ${name}=        Get From Dictionary    ${product}    name

    Log To Console    Clicking on product: ${name}
    Click Element     xpath=//android.widget.TextView[@text='${name}']  

    Wait Until Text Is Visible     ${name}
    Wait Until Text Is Visible     ${name}

    

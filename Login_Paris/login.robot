*** Settings ***
Resource    recursos.robot


*** Test Cases ***
001 Registro e inicio de sesión
    Open Homepage 
    Click Element    css=#clickLogin > div > div.header_login
    Wait Until Element is Visible    css=#collapseLogin > div > div.side.col-1 > h3
    Set Focus To Element      css=#dwfrm_login > fieldset > div.form-row.username.required.input-email > div > input
    Input text    css=#dwfrm_login > fieldset > div.form-row.username.required.input-email > div > input   ${mail}
    Input text    css=#dwfrm_login > fieldset > div.form-row.password.required.input-password > div > input    ${pass} 
    Click Button    css=#dwfrm_login > fieldset > div.buttons.mb-10 > button 
    Set Selenium Speed     0.9 seconds   
    Wait Until Element is Visible    css=#box-login-header > div > div:nth-child(1) > i > img  
    Close Browser
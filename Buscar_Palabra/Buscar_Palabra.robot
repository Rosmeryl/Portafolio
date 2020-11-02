*** Settings ***
Resource    resource.robot

*** Test Cases ***
G001 Búsqueda de palabras en google
    Open Browser and Load Logo
    Input text     xpath=//*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    ${palabraAbusar} 
    Click Element    xpath=//*[@id="hplogo"]
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be    ${palabraAbusar} - Buscar con Google
    Set Selenium Speed	0.4 seconds
    Page Should Contain     ${palabraAbusar}
    Close Browser



G002 Hacer click en el botón de búsqueda sin escribir palabras en google
    Open Browser and Load Logo
    Click Element    xpath=//*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]
    Title Should Be    Google
    Close Browser
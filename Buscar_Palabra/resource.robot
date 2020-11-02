*** Settings ***
Library              SeleniumLibrary

*** Variables ***
${palabraAbusar}    casos de prueba
${Browser}    Chrome
${URL}    https://www.google.com/

*** Keywords ***
Open Browser and Load Logo
    Open Browser    ${URL}    ${Browser}  
    Wait Until Element Is Visible     xpath=//*[@id="hplogo"]

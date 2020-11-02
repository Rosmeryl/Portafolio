*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}     chrome
${homepage}    automationpractice.com/index.php
${scheme}      http
${testUrl}     ${scheme}://${homepage}
@{items}       1        2       3       4       5       6       7


*** Keywords ***
Open Homepage 
    Open Browser    ${testUrl}    ${browser}



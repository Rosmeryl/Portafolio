*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${name}    Jean
${lastname}    Rodriguez 
${rut}   24429364-6
${mail}    jeanr123@gmail.com
${pass}    Jr123456
${telf}    946543988 
${tipo}    RUT   
${Browser}    Chrome
${URL}    https://www.paris.cl/


*** Keywords ***
Open Homepage 
    Open Browser    ${URL}    ${Browser}  

*** Settings ***
Resource    recursos.robot

*** Test Cases ***
AP001 Verificar que la previsualización está funcionando correctamente a través del icono del ojo
    Open Homepage 
    Set Focus To Element       css=#home-page-tabs > li.active > a
    Set Window Size      1190       900
    Set Selenium Speed      0.3 seconds
    FOR    ${cadaItem}   IN      @{items}
        Set Focus To Element    css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
        ${objetoTitulo}=        Get Text        css=#homefeatured > li:nth-child(${cadaItem}) > div > div.right-block > h5 > a
        Click Element          css=#homefeatured > li:nth-child(${cadaItem}) > div > div.left-block > div > div.quick-view-wrapper-mobile > a > i
        Wait Until Element is Visible       css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
        Select Frame            css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > div > div > iframe
        Wait Until Element is Visible       css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1
        Element Text Should Be      css=#product > div > div > div.pb-center-column.col-xs-12.col-sm-4 > h1             ${objetoTitulo}
        Unselect Frame
        Click Element       css=#index > div.fancybox-overlay.fancybox-overlay-fixed > div > div > a
    END
    Close Browser

AP002 Verificar que la previsualización está funcionando correctamente a través del texto de preview
    Open Homepage
    Set Window Size    1300	    680
    Set Selenium Speed	0.2 seconds
    Wait Until Element Is Visible	xpath=//*[@id="home-page-tabs"]/li[1]/a
    FOR	    ${cadaItem}	IN	@{items}
        Wait Until Element Is Visible     xpath=//*[@id="homefeatured"]/li[${cadaItem}]/div/div[2]/h5/a
        ${objetoTitulo}=	Get Text	xpath=//*[@id="homefeatured"]/li[${cadaItem}]/div/div[2]/h5/a
        Mouse Over     xpath=//*[@id="homefeatured"]/li[${cadaItem}]/div/div[1]/div/a[1]/img
        Click Element	xpath=//*[@id="homefeatured"]/li[${cadaItem}]/div/div[1]/div/a[2]/span
        Wait Until Keyword succeeds     2 min	3 Sec	Wait Until Element is Visible  xpath=//*[@id="index"]/div[2]/div/div/div/div/iframe
        Select Frame	 xpath=//*[@id="index"]/div[2]/div/div/div/div/iframe
        Wait Until Element is Visible	xpath=//*[@id="product"]/div/div/div[2]/h1
        Element Text Should Be	xpath=//*[@id="product"]/div/div/div[2]/h1	 ${objetoTitulo}
        Unselect Frame
        Click Element	xpath=//*[@id="index"]/div[2]/div/div/a
    END
        Close Browser
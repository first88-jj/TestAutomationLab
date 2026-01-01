*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     http://localhost:7272/Registration.html
${BROWSER}    Chrome

*** Test Cases ***
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC01_Register_Success_All
    Input Text    id=firstname    Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton
    Wait Until Page Contains    Success
    Page Should Contain    Thank you for registering with us
    Page Should Contain    We will send a confirmation to your email soon
    Close Browser
	
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC02_Register_Success_NoOrganization
	Input Text    id=firstname    Somyod
	Input Text    id=lastname     Sodsai
	Input Text    id=email        somyod@kkumail.com
	Input Text    id=phone        091-001-1234
	Click Button  id=registerButton
	Wait Until Page Contains    Success
	Page Should Contain    Thank you for registering with us
	Page Should Contain    We will send a confirmation to your email soon
	Close Browser
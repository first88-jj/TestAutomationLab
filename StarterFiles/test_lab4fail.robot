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
	
TC01_Register_Fail_EmptyFirstname
    Input Text    id=lastname     Sodyod
    Input Text    id=organization    CS KKU
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your first name!!
	Sleep    2s
    Close Browser
	
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC02_Register_Fail_EmptyLastname
    Input Text    id=firstname     Somyod
    Input Text    id=organization    CS KKU
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your last name!!
	Sleep    2s
    Close Browser
	
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC03_Register_Fail_EmptyLastAndFirstname
    Input Text    id=organization    CS KKU
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your name!!
	Sleep    2s
    Close Browser
	
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC04_Register_Fail_EmptyEmail
	Input Text    id=firstname     Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton
    Page Should Contain    Please enter your email!!
	Sleep    2s
    Close Browser
	
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC05_Register_Fail_EmptyPhoneNumber
	Input Text    id=firstname     Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email        somyod@kkumail.com
    Click Button  id=registerButton
    Page Should Contain    Please enter your phone number!!
	Sleep    2s
    Close Browser
	
Open Browser To Register Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Page Should Contain    Workshop Registration
	
TC06_Register_Fail_InvalidPhoneNumber
	Input Text    id=firstname     Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email        somyod@kkumail.com
	Input Text    id=phone        1234
    Click Button  id=registerButton
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
	Sleep    2s
    Close Browser
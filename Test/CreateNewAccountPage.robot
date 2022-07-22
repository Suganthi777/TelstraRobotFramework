*** Settings ***
Library            Selenium2Library

*** Variables ***
${Url}                 https://www.facebook.com/
${Browser}              chrome
${Delay}                10s




*** Test Cases ***
FaceBook Page CreateNew Account
   [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Maximize Browser Window
     Sleep        ${Delay}
    Click Link    XPath=//a[text()='Create New Account']
    Sleep        ${Delay}
    Input Text    name=firstname    Suganthi 
       
    Input Text    name=lastname    J    
    Input Text    name=reg_email__    suganthistar2011@gmail.com  
    Input Text    name=reg_email_confirmation__       suganthistar2011@gmail.com 
    Input Password    id=password_step_input    123456
     
     Click Element     XPath=//label[text()='Female']
     Click Button    XPath=(//button[text()='Sign Up'])[1]  
     Capture Page Screenshot    filename=CreatePageFB.png  
     Sleep        ${Delay}    
     Close Browser   
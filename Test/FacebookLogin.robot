*** Settings ***
Library            Selenium2Library

*** Variables ***
${Url}                 https://www.facebook.com/
${Browser}              chrome
${Delay}                5s




*** Test Cases ***
FaceBook Page Login
   [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Maximize Browser Window
    Input Text    id=email    suganthistar2011@gmail.com   
    Input Password    id=pass    password  
    Click Button    name=login    
    Capture Page Screenshot    filename= FacebookLogin.png
    Sleep          ${Delay}
    
    Close Browser 
    
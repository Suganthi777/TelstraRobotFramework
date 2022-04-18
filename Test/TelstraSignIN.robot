*** Settings ***
Documentation           your document
Library                 Selenium2Library


*** Variables ***
${Url}                 https://www.telstra.com.au/
${Browser}              chrome
${Delay}                10s



*** Test Cases ***
load Teltra SignIn page
    [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Maximize Browser Window
    sleep               ${Delay}
     Click Element      XPath=(//span[text()='Sign in'])[1]
     Click Element    XPath=(//a[text()='My Telstra'])[1] 
     Sleep    20s       
    Click Link           XPath=/html/body/div[2]/div[1]/form/a 
     sleep               ${Delay}
    Click Button    XPath=//button[@type='button'] 
     sleep               ${Delay}
    Input Text    id= userName   suganthistar2011@gmail.com
   sleep               20s
    Input Password    id=password    Star-2011.
     sleep               20s
    Click Button    //button[text()='Next']  
    Close Browser             
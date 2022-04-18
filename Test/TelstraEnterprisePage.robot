*** Settings ***
Documentation           your document
Library                 Selenium2Library


*** Variables ***
${Url}                 https://www.telstra.com.au/
${Browser}              chrome
${Delay}                10s



*** Test Cases ***

load Teltra Enterprises page
   
           [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Maximize Browser Window
    sleep               ${Delay}
    Click Element    XPath=/html/body/div[2]/div[2]/div/nav/ul[1]/li[3]/a/span 
     sleep               ${Delay}
    Click Element    XPath=//span[text()='Services']    
     sleep               ${Delay}
    Click Link    xPath=//a[text()='Managed Networks'] 
     sleep               ${Delay}  
     Capture Page Screenshot     filename=TeltraManagedNetwork.png
     
    [Teardown]         CLOSE BROWSER    
    
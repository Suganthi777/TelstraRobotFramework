*** Settings ***

Documentation           your document
Library                 Selenium2Library


*** Variables ***
${Url}                 https://www.telstra.com.au/
${Browser}              chrome
${Delay}                10s

*** Test Cases ***
load Teltra page
    [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Maximize Browser Window
    sleep               ${Delay}
    Click Element      XPath=//span[text()='Search']    
    Input Text          id=tcom-lego-search-main-input    AppleWatch 
    Press Keys     None      ENTER     
    sleep               20s
   
    
    Click Link               XPath=(//a[@href="https://www.telstra.com.au/apple/apple-watch" ])[1]
    Capture Page Screenshot     filename=Teltra.png
      
   
     sleep               30s

    [Teardown]         CLOSE BROWSER
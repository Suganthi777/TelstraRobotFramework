*** Settings ***
Documentation           your document
Library                 Selenium2Library


*** Variables ***
${Url}                 https://www.telstra.com.au/
${Browser}              chrome
${Delay}                10s



*** Test Cases ***

load Teltra Rewards page
   
           [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Maximize Browser Window
    sleep               ${Delay}
    Click Link    XPath=/html/body/div[2]/div[2]/div/nav/ul[2]/li[1]/a
     sleep               ${Delay}
     Click Element    XPath=//span[text()='Rewards Store']    
      sleep               ${Delay}
      
    Capture Page Screenshot     filename=TelstraRewardsPage.png
     
    [Teardown]         CLOSE BROWSER    
    
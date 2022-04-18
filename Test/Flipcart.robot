*** Settings ***
Library            Selenium2Library

*** Variables ***
${Url}                 https://www.icann.org/
${Browser}              chrome
${Delay}                5s

*** Test Cases ***
load icann page
    [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Sleep          ${Delay}
    Close Browser 
    
    


    
    
    
    
            
 

    
   

        
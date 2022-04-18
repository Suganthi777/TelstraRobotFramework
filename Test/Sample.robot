*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
FirstTest
  [Documentation]    This is a sample Login Test
     
            
  
  Open Browser    https://www.facebook.com/       chrome
  Input Text    id=email    suganthistar2011@gmail.com
  Input Password    id=pass    pass  
  Click Button    name=login

    
 


 
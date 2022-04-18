*** Settings ***

Documentation           your document
Library                 Selenium2Library


*** Variables ***
${Url}                  https://www.google.lk
${Browser}              chrome
${Delay}                3s

*** Test Cases ***
load google page
    [Documentation]     your test case document
    OPEN BROWSER        ${Url}     ${Browser}
    Input text          name=q   robot framework
    sleep               ${Delay}
    # click button        id=<button_id>            
    # Page Should Contain     loglevel=INFO  text=<content>
    Capture Page Screenshot     filename=test_result.png
    [Teardown]         CLOSE BROWSER
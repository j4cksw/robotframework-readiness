*** Settings ***
Library    Selenium2Library
Library    RequestsLibrary

*** Test Case ***
Can open chrome browser
    Open Browser    https://www.google.co.th    chrome
    Close Browser

Can request API
    Create session     google    https://www.google.com
    ${response}=    Get request    google    /
    Should Be Equal As Strings    200    ${response.status_code}

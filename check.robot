*** Settings ***
Library    Selenium2Library
Library    RequestsLibrary

*** Test Case ***
Can open chrome browser
    Open browser    https://www.google.co.th    chrome

Can request API
    Create Session     google    https://www.google.com


*** Settings ***
Resource    ./PO/Landing.robot



*** Variables ***


*** Keywords ***
Start New Page
    Landing.Load Page

Start New Seach
    [Arguments]    ${SEARCH}
    Landing.First Search    ${SEARCH}

Start New Navigate
    Landing.ClickSearch

Home
    Landing.BackToHome
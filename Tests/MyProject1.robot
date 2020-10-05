*** Settings ***
Documentation    My First Independent Robot Framework Project
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/MyProject1App.robot
Test Setup    CommonWeb.Begin Web Browser
Test Teardown    CommonWeb.End Web Browser

*** Variables ***
${BROWSER} =        safari
${START_URL} =      http://www.google.com
${FIRST_SEARCH} =   hello world
${SECOND_SEARCH} =  amazon.com
${THIRD_SEARCH} =   youtube.com

*** Test Cases ***
Tast Case 1
    MyProject1App.Start New Page

Test Case 2
    MyProject1App.Start New Page
    MyProject1App.Start New Seach   ${FIRST_SEARCH}

Test Case 3
    MyProject1App.Start New Page
    MyProject1App.Start New Seach   ${FIRST_SEARCH}
    MyProject1App.Start New Navigate
    MyProject1App.Home

Test Case 4
    MyProject1App.Start New Page
    MyProject1App.Start New Seach   ${SECOND_SEARCH}
    MyProject1App.Start New Navigate

Test Case 5
    MyProject1App.Start New Page
    MyProject1App.Start New Seach   ${THIRD_SEARCH}
    MyProject1App.Start New Navigate
    MyProject1App.Home



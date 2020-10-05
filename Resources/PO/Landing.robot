*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Load Page
    go to    ${START_URL}
    sleep    2s

First Search
    [Arguments]    ${search}
    input text    css:#tsf > div:nth-child(2) > div.A8SBwf > div.RNNXgb > div > div.a4bIc > input    ${search}
    sleep    1s

ClickSearch
    click button    xpath://*[@id="tsf"]/div[2]/div[1]/div[2]/div[2]/div[2]/center/input[1]
    wait until page contains    About
    sleep   3s

BackToHome
    click link    css:#logo
    wait until page contains    About
    sleep   3s
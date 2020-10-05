*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Browser
    open browser    about:blank    ${BROWSER}

End Web Browser
    close browser
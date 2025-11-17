*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa
    Click Button  Nollaa
        
When button pressed twice the counter is two
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa
    Click Button  Nollaa

When reset value becomes zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    Click Button  Nollaa

When setting it sets the value
    Go To  ${HOME_URL}
    Input Text  num  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa
    Click Button  Nollaa
*** Settings ***

Resource  resource.robot

Test Teardown  Close Browser

*** Test Cases ***

Check if it is possible to switch to Chinese language for the page
    Open the About Page and switch to  简体中文
    Page should be in Simplified Chinese

Check if it is possible to switch to Japanese language for the page
    Open the About Page and switch to  日本語
    Page should be in Japanese

*** Keywords ***

Open the About Page and switch to  [Arguments]  ${language}
    Open Browser  ${BASE_URL}/about  ${BROWSER}
    Click Link    ${language}

Page should be in Simplified Chinese
    Page Should Contain   翻译版

Page should be in Japanese
    Page Should Contain   最新版

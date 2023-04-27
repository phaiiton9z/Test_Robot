***Settings***
Resource    ${CURDIR}/../../Resources/resources.robot

***Variables***
${Facebook_login_page.txt_username}                      xpath=//input[@id="email"]
${Facebook_login_page.txt_password}                      xpath=//input[@id="pass"]
${Facebook_login_page.btn_login}                         xpath=//button[@name="login"]
${Facebook_login_page.btn_forgot_password}               xpath=//a[contains(@href, "https://www.facebook.com/recover")]
${Facebook_login_page.btn_create_new_accout}             xpath=//a[text() = "Create New Account"]
${Facebook_login_page.img_facebook_logo}                 xpath=//img[contains(@class,'fb_logo')]
${Excel}            Testdata.xlsx

***Keywords***
Input Email or Phone Number
    [Documentation]    Input username in username text box
    [Arguments]                 ${Username}
    Input Element When Ready    ${Facebook_login_page.txt_username}    ${Username}

Input Password
    [Documentation]    Input password in password text box
    [Arguments]                 ${Password}
    Input Element When Ready    ${Facebook_login_page.txt_password}    ${Password}

Click Login Button
    [Documentation]    Click login button to go to login page
    Click Element When Ready    ${Facebook_login_page.btn_login}

Click Forgotten Password Button
    [Documentation]    Click Forgotten Password button to go to Forgotten Password page 
    Click Element When Ready    ${Facebook_login_page.btn_forgot_password}

Click Create New Account Button
    [Documentation]    Click Create New Account Button to go to Create New Account page
    Click Element When Ready    ${Facebook_login_page.btn_create_new_accout}

Validate Facebook Login Page
    Wait Until Page Contains Element    ${Facebook_login_page.img_facebook_logo}    timeout=2s

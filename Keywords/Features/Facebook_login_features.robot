***Keywords***
Login Local
    [Documentation]    Login local with username and password
    [Arguments]        ${username}     ${password}
    Facebook_login_page.Validate Facebook Login Page
    Facebook_login_page.Input Email or Phone Number         ${username}
    Facebook_login_page.Input Password                      ${password}
    Facebook_login_page.Click Login Button

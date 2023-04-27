***Variables***
${url}      http://www.facebook.com

***Keywords***
Open Browser With Defined Resolution
    #desktop
    [Arguments]     ${url}=${url}    ${browser_mode}=${run_mode}
    Run Keyword if  '${browser_mode}' == 'desktop'
    ...     Open Browser With Desktop Mode  url=${url}
    #mobile
    Run Keyword if  '${browser_mode}' == 'mobile'
    ...     Open Browser With Mobile Responsive Mode            url=${url}

Open Browser With Mobile Responsive Mode
    [Arguments]     ${url}
    ${device metrics}=    Create Dictionary    width=${360}    height=${640}    pixelRatio=${3.0}    userAgent=Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19
    ${mobile emulation}=    Create Dictionary    deviceMetrics=${device metrics}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_experimental_option    mobileEmulation    ${mobile emulation}
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Goto    ${url}

Open Browser With Desktop Mode
    [Arguments]     ${url}
    ${list} =     Create List    --start-maximized    --disable-web-security    --disable-gpu   --disable-extensions
    ${args} =     Create Dictionary    args=${list}
    ${desired caps} =     Create Dictionary       chromeOptions=${args}
    Open Browser    ${url}    browser=chrome    desired_capabilities=${desired caps}
    Maximize Browser Window

Click Element When Ready
    [Arguments]     ${Element}
    Wait Until Page Contains Element  ${Element}  timeout=10s
    Click Element   ${Element}  

Input Element When Ready
    [Arguments]     ${Element}      ${text}
    Wait Until Page Contains Element  ${Element}  timeout=10s
    Input Text  ${Element}  ${text}  clear=True

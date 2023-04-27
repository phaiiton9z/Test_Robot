***Settings***
Resource    ${CURDIR}/../Resources/resources.robot

Suite Teardown    Close All Browsers

***Variables***
${username}     aaaa
${password}     bbbb

***Test Cases***
Test login
    Open Browser With Defined Resolution
    Facebook_login_features.Login Local  ${username}  ${password}
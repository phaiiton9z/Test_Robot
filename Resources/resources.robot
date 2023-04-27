***Settings***
Library     SeleniumLibrary
Library     DebugLibrary
Library     String
Library     openpyxl
Library     BuiltIn
Library     DateTime
Library     OperatingSystem
# Library     DataDriver  ../Resources/Testdata.xlsx  Sheet_name=Sheet1
Resource    ${CURDIR}/../Keywords/Page/Facebook_login_page.robot
# Resource    ${CURDIR}/../Keywords/Page/Google_page.robot
Resource    ${CURDIR}/../Keywords/Features/Facebook_login_features.robot
Resource    ${CURDIR}/../Keywords/common.robot
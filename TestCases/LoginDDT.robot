# DataDriven testing with using resources file
#robot -d Reports ./TestCases/LoginDDT.robot
*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver   ../TestData/TestData.xlsx     sheet_name=Sheet1

Suite Setup    Open my Browser
Suite Teardown     Close Browsers
Test Template  Invalid Login

*** Test Cases ***
TestValidLogin
     [Tags]  smoke

*** Keywords ***
Invalid Login
    [Arguments]  ${Email1}  ${Password1}
    Open Login Page
    Input username    ${Email1}
    Input pwd    ${Password1}
    click login button
    Dashboard page should be visible

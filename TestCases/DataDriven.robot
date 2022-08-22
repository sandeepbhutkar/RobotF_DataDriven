#robot -d Reports ./TestCases/DataDriven.robot
# DataDriven testing without usind resources file
*** Settings ***
Library   SeleniumLibrary
Library   DataDriver      ../TestData/TestData.xlsx     sheet_name=Sheet1
Test Template  DataDriven


*** Variables ***
*** Keywords ***
DataDriven
    [Arguments]  ${Email1}   ${Password1}   ${Email2}   ${Password2}   ${FirstName}    ${LastName}
    Create Webdriver    Chrome      executable_path=C:\\Users\\sbhutkar\\PycharmProjects\\RobotF_DataDriven\\driver\\chromedriver.exe
    Go To    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
    Maximize Browser Window
    Input Text      css:#Email      ${Email1}
    Input Text      css:input[id=Password]      ${Password1}
    Click Button    css:button.button-1.login-button
    Click Element      xpath://body/div[3]/aside[1]/div[1]/div[4]/div[1]/div[1]/nav[1]/ul[1]/li[4]/a[1]
    Click Element      xpath:/html/body/div[3]/aside/div/div[4]/div/div/nav/ul/li[4]/ul/li[1]/a
    Sleep   3
    Click Element    xpath://body/div[3]/div[1]/form[1]/div[1]/div[1]/a[1]
    Input Text      css:input#Email       ${Email2}
    Input Text      css:input#Password      ${Password2}
    Input Text      css:input#FirstName       ${FirstName}
    Input Text      css:input#LastName      ${LastName}
    Click Element     id:Gender_Male
    Sleep   2
    CLose Browser
*** Test Cases ***
DDT
    DataDriven



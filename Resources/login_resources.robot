*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${BROWSER}     Chrome

*** Keywords ***
Open my Browser
    Create Webdriver     ${BROWSER}       executable_path=C:\\Users\\sbhutkar\\PycharmProjects\\RobotF_DataDriven\\driver\\chromedriver.exe

Close Browsers
    close all browsers
Open Login Page
    Go To    ${LOGIN URL}
    Maximize Browser Window
Input username
        [Arguments]  ${username}
        input text     id:Email      ${username}
Input pwd
        [Arguments]  ${password}
        input text     id:Password      ${password}
click login button
      Click Button    css:button.button-1.login-button
Error message should be visible
      page should contain     Login was unsuccessful
Dashboard page should be visible
      page should contain     Dashboard



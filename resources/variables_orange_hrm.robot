*** Variables ***
${BROWSER}                    chrome
${URL}                        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

#ELEMENTOS DA PÁGINA
${USERNAME_ORANGEHRM}          xpath=//input[@name='username']
${INPUT_PASSWORD_ORANGEHRM}    xpath=//input[@name='password']
${SUBMIT_BUTTON}               xpath=//button[@type='submit'][contains(.,'Login')]

#CREDENCIAIS
${USERNAME}                    Admin
${CORRECT_PASSWORD}            admin123
${INCORRECT_PASSWORD}          123

#TEXTOS EXIBIDOS
${LOGIN_TEXT}                  Login
${DASHBOARD_HOME}              Dashboard
${INVALID_CREDENTIALS_TEXT}    Invalid credentials
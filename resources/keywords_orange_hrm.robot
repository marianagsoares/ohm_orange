*** Settings ***
Resource   ./variables_orange_hrm.robot
Library    SeleniumLibrary

*** Keywords ***
Abrir o navegador
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que o usuário está na página de Login do site OrangeHRM
    Wait Until Page Contains    ${LOGIN_TEXT}
Quando inserir as credenciais ${USERNAME} e ${PASSWORD} válidas
    Wait Until Element Is Visible    ${USERNAME_ORANGEHRM}
    Input Text    ${USERNAME_ORANGEHRM}    ${USERNAME}
    
    Wait Until Element Is Visible    ${INPUT_PASSWORD_ORANGEHRM}
    Input Text    ${INPUT_PASSWORD_ORANGEHRM}   ${PASSWORD}

    Wait Until Element Is Visible    ${SUBMIT_BUTTON} 
    Click Button    ${SUBMIT_BUTTON}

Então será logado com sucesso na aplicação
    Wait Until Page Contains    ${DASHBOARD_HOME}


Informar o ${USERNAME} no campo ${USERNAME_ORANGEHRM}
    Wait Until Element Is Visible    ${USERNAME_ORANGEHRM}
    Input Text    ${USERNAME_ORANGEHRM}    ${USERNAME}

Informar a ${INCORRECT_PASSWORD} no campo ${INPUT_PASSWORD_ORANGEHRM}
    Wait Until Element Is Visible    ${INPUT_PASSWORD_ORANGEHRM}
    Input Text    ${INPUT_PASSWORD_ORANGEHRM}   ${INCORRECT_PASSWORD}

Clicar no botão ${SUBMIT_BUTTON}
    Wait Until Element Is Visible    ${SUBMIT_BUTTON} 
    Click Button    ${SUBMIT_BUTTON}

Aguardar o feedback ${INVALID_CREDENTIALS_TEXT} da aplicação
    Wait Until Page Contains    ${INVALID_CREDENTIALS_TEXT}
    
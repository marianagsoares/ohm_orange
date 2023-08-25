*** Settings ***
Documentation    Essa suite testa a página login do site opensource-demo.orangehrmlive.com
Resource        ../resources/keywords_orange_hrm.robot
Resource        ../resources/variables_orange_hrm.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT001: Efetuar login com usuário e senha válidos
    [Documentation]    Testa a funcionalidade de login do site orangeHRM, ao 
    ...    inserir usuáio e senha válidos, resultando em login bem sucedido.
    ...    
    [Tags]     Login

    Dado que o usuário está na página de Login do site OrangeHRM
    Quando inserir as credenciais ${USERNAME} e ${CORRECT_PASSWORD} válidas
    Então será logado com sucesso na aplicação

CT002: Efetuar login com usuário válido e senha inválida
    [Documentation]    Testa a funcionalidade de login do site orangeHRM, ao 
    ...    inserir usuáio e senha válidos, resultando em login bem sucedido.
    ...    
    [Tags]     Login

    Informar o ${USERNAME} no campo ${USERNAME_ORANGEHRM}
    Informar a ${INCORRECT_PASSWORD} no campo ${INPUT_PASSWORD_ORANGEHRM} 
    Clicar no botão ${SUBMIT_BUTTON}
    Aguardar o feedback ${INVALID_CREDENTIALS_TEXT} da aplicação
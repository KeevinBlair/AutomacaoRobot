***Settings***

Resource    ../resources/base.robot
#Executa a KW antes de cada testecase
Test Setup          Open Session
#Executa a KW depois de cada testecase
Test Teardown       Close Session

***Test Cases***
Login Acess

    Login
    Wait Until Page Contains        Pendências
    Sleep                           3
    
Login Acess With Wrong Password

    Login
    Wait Until Page Contains        Problema ao autenticar
    Wait Until Page Contains        Não foi possível autenticar com os dados informados ou você não está conectado a internet, tente novamente.
    Sleep                           3
    Assert                          True
Login Acess With Wrong User

    Login
    Wait Until Page Contains        Problema ao autenticar
    Wait Until Page Contains        Não foi possível autenticar com os dados informados ou você não está conectado a internet, tente novamente.
    Sleep                           3






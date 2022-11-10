***Settings***
Resource    ../resources/base.robot

#Executa a KW antes de cada testecase
Test Setup          Open Session
#Executa a KW depois de cada testecase
Test Teardown       Close Session

***Test Cases***
Deve acessar a tela Cadastros
    
    Login
    Navigation Acess
    Wait Until Page Contains            Cadastros
    Click Text                          Cadastros
    Sleep                               2

Deve acessar a tela Comercial

    Login
    Navigation Acess
    Wait Until Page Contains            Comercial
    Click Text                          Comercial
    Sleep                               2

Deve acessar a tela Apontamentos
    
    Login
    Navigation Acess
    Wait Until Page Contains            Apontamentos
    Click Text                          Apontamentos
    Sleep                               2

Deve acessar a tela Administrativo    

    Login
    Navigation Acess
    Wait Until Page Contains            Administrativo
    Click Text                          Administrativo
    Sleep                               2

Deve acessar a tela Gestão de Projetos
    
    Login
    Navigation Acess
    Wait Until Page Contains            Gestão de Projetos
    Click Text                          Gestão de Projetos
    Sleep                               2

Deve acessar a tela Ferramentas
    
    Login
    Navigation Acess
    Wait Until Page Contains            Ferramentas
    Click Text                          Ferramentas
    Sleep                               2

Deve fazer Logout

    Login
    Navigation Acess
    Wait Until Page Contains            SAIR
    Click Text                          SAIR
    Wait Until Page Contains            Usuário

Acess By Name
    [tags]      abn
    
    Login
    Wait Until Page Contains          (Nome do Colaborador)
    Click Text                        (Nome do Colaborador)
    Wait Until Page Contains          (Nome do Colaborador)
    Sleep                             3
     	
    


***Settings***
Resource        ../resources/base.robot
#Executa a KW antes de cada testecase
Test Setup          Open Session
#Executa a KW depois de cada testecase
Test Teardown       Close Session

    # start_x - x-percent at which to start
    # start_y - y-percent at which to start
    # end_x - x-percent distance from start_x at which to stop
    # end_y - y-percent distance from start_y at which to stop

***Test Cases***
Must approve the pending
    [tags]       aprov
    Login
    
    Wait Until Page Contains        	Pendências
    
    Wait Until Page Contains            (ID da pendência)
    Click Text                          (ID da pendência)
    Sleep                               2
    
    Swipe By Percent                    12.40       29.60       46.26       12.40                      


Must deny the pending
    [tags]    deny
    Login
    
    Wait Until Page Contains        	Pendências
    
    Wait Until Page Contains            (ID da pendência)
    Click Text                          (ID da pendência)
    Sleep                               2
    
    Swipe By Percent                    86.11       30.48       50.46       30.48 

Must go to previous pending
    [tags]          prev
    Login
    
    Wait Until Page Contains        	Pendências

    Wait Until Page Contains            (ID da pendência)
    Click Text                          (ID da pendência)
    Sleep                               2
    
    Swipe By Percent                    50.18       96.51       50.18       27.23
    Wait Until Page Contains            (ID da pendência anterior)  

Must go to the next pending
    [tags]          next
    Login
    
    Wait Until Page Contains        	Pendências

    Wait Until Page Contains            (ID da pendência)
    Click Text                          (ID da pendência)
    Sleep                               2
    
    Swipe By Percent                    50.95       26.79       50.95       48.68
    Wait Until Page Contains            (ID da próxima pendência)
    Sleep                               2

Must acess the OSI details and get back
    [tags]          det
    Login
    
    Wait Until Page Contains        	Pendências

    Wait Until Page Contains            (ID da pendência)
    Click Text                          (ID da pendência)

    Click Text                          (ID da pendência)
    Sleep                               5
    Wait Until Page Contains            Detalhes da OSI

    Click Element                       ${GET_BACK}
    Wait Until Page Contains            (ID da pendência)
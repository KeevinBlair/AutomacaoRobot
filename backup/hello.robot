***Settings***
Library     hello.py

***Test Cases***
Deve retornar mensagem de boas vindas
    ${resultado}=   Hello Robot     Kevin Blair
    Should be Equal     ${resultado}    Olá, Kevin Blair!
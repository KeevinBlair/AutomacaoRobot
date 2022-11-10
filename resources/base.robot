***Settings***

Library     AppiumLibrary

***Variables***
${LOGIN}            class=android.widget.EditText
${PASSWORD}         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout[3]/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText
${GET_BACK}         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout[3]/android.support.v4.widget.DrawerLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageButton

***Keywords***
Open Session
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Android Emulator
    ...                     app=${EXECDIR}/app/1.8.4QA.apk

    Wait Until Page Contains          Usuário      5

Close Session
    Close Application

Login   
    Input Text                          ${LOGIN}                kevin.blair
    Input Text                          ${PASSWORD}             Bke1908@
    Click Text                          ACESSAR

Navigation Acess
    Wait Until Element Is Visible       class=android.widget.ImageButton    7
    Click Element                       class=android.widget.ImageButton

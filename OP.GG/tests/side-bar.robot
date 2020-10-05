***Settings***

Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session
***Variables***

${BTN_NAV}=        id=gg.op.lol.android:id/btnNavigation 

***Test Cases***
Deve testar a barra lateral
    Go To Initial Page
    Click ELement                    ${BTN_NAV}
    Wait Until Element Is Visible    id=gg.op.lol.android:id/recyclerView
    Click ELement                    ${BTN_NAV}



***Keywords***
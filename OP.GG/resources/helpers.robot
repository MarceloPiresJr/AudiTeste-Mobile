***Settings***
Documentation       Aqui teremos as KWs helpers

***Variables***
${LAYOUT_BOTTOM}=           id=gg.op.lol.android:id/layoutBottom
${SWIPE}=                   80      83      10      83
***Keywords***

#Helpers
Go To Initial Page
    Wait Until Element Is Visible        id=gg.op.lol.android:id/txtMessage 
    Swipe By Percent                     80      83      10      83

    Wait Until Element Is Visible        ${LAYOUT_BOTTOM}
    Swipe By Percent                     80      83      10      83

    Wait Until Element Is Visible        ${LAYOUT_BOTTOM}
    Swipe By Percent                     80      83      10      83

    Click Element                        id=gg.op.lol.android:id/layoutStart
    Wait Until Page Contains             League of Legends
    
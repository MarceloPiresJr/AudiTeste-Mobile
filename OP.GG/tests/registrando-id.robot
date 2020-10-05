***Settings***

Resource    ../resources/base.robot


Test Setup       Open Session
Test Teardown    Close Session

***Test Cases***
Registrando um novo ID
    Go To Initial Page
    Click Element                    id=gg.op.lol.android:id/layoutFavoriteEmpty
    Wait Until Page Contains         Please register your summoner ID.
    Input Text                       id=gg.op.lol.android:id/editSearch             aphromoo
    Click Element                    id=gg.op.lol.android:id/txtConfirm
    Wait Until Element Is Visible    id=gg.op.lol.android:id/imgProfile

Registrando um novo ID com erro
    Go To Initial Page
    Click Element               id=gg.op.lol.android:id/layoutFavoriteEmpty
    Wait Until Page Contains    Please register your summoner ID.
    Input Text                  id=gg.op.lol.android:id/editSearch             aphrommo
    Click Element               id=gg.op.lol.android:id/txtConfirm
    Wait Until Page Contains    'aphrommo' doesn’t exist in this region.
    Click Element               id=android:id/button1

Apagando um ID Registrado
    Go To Initial Page
    Click Element                    id=gg.op.lol.android:id/layoutFavoriteEmpty
    Wait Until Page Contains         Please register your summoner ID.
    Input Text                       id=gg.op.lol.android:id/editSearch                aphromoo
    Click Element                    id=gg.op.lol.android:id/txtConfirm
    Wait Until Element Is Visible    id=gg.op.lol.android:id/imgProfile
    Click Element                    id=gg.op.lol.android:id/layoutDelete
    Wait Until Page Contains         Do you want to remove?
    Click Element                    id=android:id/button1
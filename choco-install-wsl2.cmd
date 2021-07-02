PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell choco install -y wsl2 >> "%TEMP%\StartupLog.txt" 2>&1
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\startup.cmd"
pause
shutdown /r

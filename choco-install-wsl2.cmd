REM Invoke-WebRequest -Uri "https://raw.githubusercontent.com/dzhivkov/public-scripts/main/choco-install-wsl2.cmd" -OutFile "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup-wsl.cmd"
REM PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
REM runas /user:administrator choco install -y wsl2 >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell -Command "Set-ExecutionPolicy Unrestricted"
runas /user:administrator choco install -y wsl2
pause
REM PowerShell Invoke-WebRequest -Uri "https://raw.githubusercontent.com/dzhivkov/public-scripts/main/choco-install-wsl-ubuntu-2004.cmd" -OutFile "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup-wsl-ubuntu.cmd" >> "%TEMP%\StartupLog.txt" 2>&1

REM shutdown -r -f -t 05
REM del "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup-wsl.cmd"

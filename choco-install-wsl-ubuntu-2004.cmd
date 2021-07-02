PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell choco install -y wsl-ubuntu-2004 >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell Ubuntu2004.exe install --root
PowerShell wsl.exe sudo apt-get update
PowerShell wsl.exe sudo apt-get install -y ansible

del "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startup-wsl-ubuntu-2004.cmd"

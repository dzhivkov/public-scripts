# Execute from answer file with the below commands:
#   PowerShell -Command Invoke-WebRequest -Uri "https://raw.githubusercontent.com/dzhivkov/public-scripts/main/boxstarter.ps1" -OutFile C:\boxstarter.ps1
#   PowerShell -ExecutionPolicy Unrestricted -Command "Unblock-File C:\boxstarter.ps1; powershell -command C:\boxstarter.ps1"

# Install BoxStarter
. { Invoke-WebRequest -useb http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression; get-boxstarter -Force

# Run the BoxStarter Shell
BoxstarterShell

# Install Package
Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/dzhivkov/public-scripts/main/box.ps1

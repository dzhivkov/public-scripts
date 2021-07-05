#------------------------------------------------------------------------------
# TEMPORARY
#------------------------------------------------------------------------------
Disable-UAC

#------------------------------------------------------------------------------
# Uninstall unnecessary applications that come with Windows out of the box
#------------------------------------------------------------------------------

# To list store apps: Get-AppxPackage | sort -property Name | Select-Object Name, PackageFullName, Version | Format-Table -AutoSize

# Microsoft junk
Get-AppxPackage Microsoft.*3D* | Remove-AppxPackage
Get-AppxPackage Microsoft.*advertising* | Remove-AppxPackage
Get-AppxPackage Microsoft.Bing* | Remove-AppxPackage
Get-AppxPackage Microsoft.CommsPhone | Remove-AppxPackage
Get-AppxPackage Microsoft.Getstarted | Remove-AppxPackage
Get-AppxPackage Microsoft.Messaging | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftOfficeHub | Remove-AppxPackage
Get-AppxPackage Microsoft.MicrosoftStickyNotes | Remove-AppxPackage
Get-AppxPackage Microsoft.Office.OneNote | Remove-AppxPackage
Get-AppxPackage Microsoft.Office.Sway | Remove-AppxPackage
Get-AppxPackage Microsoft.OneConnect | Remove-AppxPackage
Get-AppxPackage Microsoft.People | Remove-AppxPackage
Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage
Get-AppxPackage Microsoft.Wallet | Remove-AppxPackage
Get-AppxPackage Microsoft.Windows.Photos | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsAlarms | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsFeedbackHub | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsMaps | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsPhone | Remove-AppxPackage
Get-AppxPackage Microsoft.WindowsSoundRecorder | Remove-AppxPackage
Get-AppxPackage microsoft.windowscommunicationsapps | Remove-AppxPackage
Get-AppxPackage Microsoft.Xbox* | Remove-AppxPackage
Get-AppxPackage Microsoft.Zune* | Remove-AppxPackage

# Misc
Get-AppxPackage *Autodesk* | Remove-AppxPackage
Get-AppxPackage *Spotify* | Remove-AppxPackage

# Junk games
Get-AppxPackage king.com.* | Remove-AppxPackage
Get-AppxPackage *disney* | Remove-AppxPackage
Get-AppxPackage *MarchofEmpires* | Remove-AppxPackage
Get-AppxPackage *Solitaire* | Remove-AppxPackage



#------------------------------------------------------------------------------
# Windows Settings
#------------------------------------------------------------------------------
Disable-BingSearch
Disable-GameBarTips

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TaskbarOptions -Dock Bottom -Combine Full -Lock -AlwaysShowIconsOn



#------------------------------------------------------------------------------
# Windows Features
#------------------------------------------------------------------------------
cuninst WindowsMediaPlayer -source windowsfeatures



#------------------------------------------------------------------------------
# Software
#------------------------------------------------------------------------------
choco install -y vmware-tools
choco install -y googlechrome
choco install -y 7zip
choco install -y audacity
choco install -y cryptomator
choco install -y dropbox
choco install -y streamdeck
choco install -y freemind
choco install -y keepass
choco install -y notepadplusplus
choco install -y obs-studio
choco install -y openvpn-connect
choco install -y putty
choco install -y rpi-imager
choco install -y skype
choco install -y sublimetext2
choco install -y vlc
choco install -y vmrc
choco install -y winmerge
choco install -y winrar
choco install -y winscp
choco install -y wireshark



#------------------------------------------------------------------------------
# Restore Temporary Settings
#------------------------------------------------------------------------------
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula



#------------------------------------------------------------------------------
# WSL / Ubuntu
#------------------------------------------------------------------------------
choco install -y wsl2
choco install -y wsl-ubuntu-2004
Ubuntu2004.exe install --root
wsl.exe sudo apt-get update
wsl.exe sudo apt-get install -y ansible




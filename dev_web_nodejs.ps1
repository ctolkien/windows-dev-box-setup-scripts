# Description: Boxstarter Script
# Author: Microsoft
# Common dev settings for web development

Disable-UAC

#--- Windows Features ---
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- File Explorer Settings ---
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

#--- Tools - VSCode + Extensions---
choco install -y vscode
refreshenv
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-edge
code --install-extension ms-vscode.azurecli
code --install-extension ms-vscode.csharp
code --install-extension ms-vscode.powershell
code --install-extension christian-kohler.npm-intellisense
code --install-extension peterjausovec.vscode-docker
code --install-extension editorconfig.editorconfig
code --install-extension slevesque.vscode-hexdump
code --install-extension ritwickdey.liveserver
code --install-extension eg2.vscode-npm-script
code --install-extension christian-kohler.npm-intellisense
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-mssql.mssql
code --install-extension ms-vsliveshare.vsliveshare

#--- GIT ---
choco install -y git -params '"/GitAndUnixToolsOnPath /WindowsTerminal"'

#--- Windows Subsystems/Features ---
choco install -y Microsoft-Hyper-V-All -source windowsFeatures
choco install -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures

#--- Ubuntu ---
# Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.appx -UseBasicParsing
# Add-AppxPackage -Path ~/Ubuntu.appx

#--- Browsers ---
choco install -y Googlechrome


#--- Powershell things ---
Install-Module -Name PSConsoleTheme
Install-Module -Name posh-git

#--- Node + VS Tools ---
choco install -y nodejs-lts # Node.js LTS, Recommended for most users
# choco install -y nodejs # Node.js Current, Latest features
choco install -y visualstudio2017enterprise
choco install -y visualstudio2017-workload-vctools
choco install -y visualstudio2017-workload-netweb
choco install -y visualstudio2017-workload-netcoretools
choco install -y visualstudio2017-workload-netcrossplat
choco install -y visualstudio2017-workload-node

choco install -y sql-server-management-studio

choco install -y sysinternals
choco install -y docker-for-windows
choco install -y python2 # Node.js requires Python 2 to build native modules
choco install -y postman
choco install -y hub
#choco install -y poshgit #comes from powershell modules
choco install -y 1password

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula


#--- Software from MS Store ---
# Paint.NET
# Spotify
# Slack
# Twitter
# Ubuntu

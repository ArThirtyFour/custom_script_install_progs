@echo off
irm https://get.activated.win | iex
set-ExecutionPolicy -ExecutionPolicy 'RemoteSigned'
Install-Script winget-install -Force
winget-install
set programs= Google.Chrome Nvidia.GeForceExperience Valve.Steam  qBittorrent.qBittorrent 9NCVDN91XZQP Microsoft.VisualStudioCode OBSProject.OBSStudio Ytmdesktop.Ytmdesktop  Git.Git DBBrowserForSQLite.DBBrowserForSQLite        
for %%i in (%programs%) do (
    winget install %%i
)

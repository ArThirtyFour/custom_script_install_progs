@echo off
Install-Script winget-install -Force
winget-install
set programs=Waterfox.Waterfox Nvidia.GeForceExperience Vencord.Vesktop Valve.Steam qBittorrent.qBittorrent 9NCVDN91XZQP Microsoft.VisualStudioCode OBSProject.OBSStudio Ytmdesktop.Ytmdesktop  Git.Git DBBrowserForSQLite.DBBrowserForSQLite        
for %%i in (%programs%) do (
    winget install %%i
)

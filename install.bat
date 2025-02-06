@echo off
Install-Script winget-install -Force
winget-install
set programs=Waterfox.Waterfox Docker.DockerDesktop StartIsBack.StartAllBack Roblox.Roblox Nvidia.GeForceExperience Vencord.Vesktop Valve.Steam qBittorrent.qBittorrent 9NCVDN91XZQP Microsoft.VisualStudioCode Syncthing.Syncthing OBSProject.OBSStudio Obsidian.Obsidian Docker.DockerDesktop Ytmdesktop.Ytmdesktop  Git.Git DBBrowserForSQLite.DBBrowserForSQLite        
for %%i in (%programs%) do (
    winget install %%i
)

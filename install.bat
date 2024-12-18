@echo off
set programs=Nvidia.GeForceExperience Google.Chrome RadolynLabs.AyuGramDesktop Valve.Steam MatsuriDayo.NekoRay qBittorrent.qBittorrent 9NCVDN91XZQP Microsoft.VisualStudioCode OBSProject.OBSStudio Ytmdesktop.Ytmdesktop Discord.Discord Git.Git DBBrowserForSQLite.DBBrowserForSQLite        
for %%i in (%programs%) do (
    winget install %%i
)

@echo off
chcp 65001

echo Устанавливаю драйвер WiFi...
REM ТУТ EXE МОЕГО ДРАЙВЕРА , ТАК ЧТО ОН ТЕБЕ НЕЗАЧЕМ
WiFi-23.60.1-Driver64-Win10-Win11.exe

set /p = "Ты Драйвер поставил?"
echo Устанавливаю Microsoft Store...

wsreset -i
set /p = "Ты Microsoft Store поставил?"

powershell -Command Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "WingetInstaller.msixbundle"
powershell -Command Add-AppxPackage -Path "WingetInstaller.msixbundle"

set "programs[Waterfox]=Waterfox.Waterfox"
set "programs[Vencord]=Vencord.Vesktop"
set "programs[qBittorrent]=qBittorrent.qBittorrent"
set "programs[VisualStudioCode]=Microsoft.VisualStudioCode"
set "programs[Syncthing]=Syncthing.Syncthing"
set "programs[OBSStudio]=OBSProject.OBSStudio"
set "programs[Obsidian]=Obsidian.Obsidian"
set "programs[DockerDesktop]=Docker.DockerDesktop"
set "programs[Ytmdesktop]=Ytmdesktop.Ytmdesktop"
set "programs[Git]=Git.Git"
set "programs[Postman]=Postman.Postman"
set "programs[DBBrowserForSQLite]=DBBrowserForSQLite.DBBrowserForSQLite"
set "programs[StartIsBack]=StartIsBack.StartAllBack"
set "programs[Roblox]=Roblox.Roblox"

for %%a in (Waterfox Nvidia Vencord qBittorrent VisualStudioCode Syncthing OBSStudio Obsidian DockerDesktop Ytmdesktop Git DBBrowserForSQLite StartIsBack Roblox) do (
  echo Устанавливаю... %%a
  winget install !programs[%%a]!
)


echo Устанавливаю WSL...
wsl --install -d Ubuntu-22.04

echo Перезагрузка компьютера через 5 секунд...
shutdown /r /t 5

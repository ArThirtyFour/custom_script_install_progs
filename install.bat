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

winget install Brave.Brave Vencord.Vesktop qBittorrent.qBittorrent Microsoft.VisualStudioCode OBSProject.OBSStudio Ytmdesktop.Ytmdesktop Git.Git Postman.Postman Valve.Steam DBBrowserForSQLite.DBBrowserForSQLite StartIsBack.StartAllBack


echo Устанавливаю WSL...
wsl --install -d Ubuntu-22.04

echo Перезагрузка компьютера через 5 секунд...
shutdown /r /t 5

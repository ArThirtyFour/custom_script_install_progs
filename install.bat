@echo off
chcp 65001
cls
echo Устанавливаю драйвер WiFi...
REM ТУТ EXE МОЕГО ДРАЙВЕРА , ТАК ЧТО ОН ТЕБЕ НЕЗАЧЕМ
WiFi-23.60.1-Driver64-Win10-Win11.exe

set /p = "Ты Драйвер поставил?"
echo Устанавливаю Microsoft Store...

wsreset -i
set /p = "Ты Microsoft Store поставил?"

powershell -Command Invoke-WebRequest -Uri "https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -OutFile "WingetInstaller.msixbundle"
powershell -Command Add-AppxPackage -Path "WingetInstaller.msixbundle"
.\NVIDIA_app_v11.0.2.337.exe   
winget install 9N0DX20HK701 Brave.Brave Vencord.Vesktop qBittorrent.qBittorrent Anysphere.Cursor OBSProject.OBSStudio Ytmdesktop.Ytmdesktop Git.Git Postman.Postman Valve.Steam DBBrowserForSQLite.DBBrowserForSQLite RamenSoftware.Windhawk XP89DCGQ3K6VLD XP89DCGQ3K6VLD 9NT1R1C2HH7J 


echo Устанавливаю WSL...
wsl --install -d Ubuntu-22.04
& '.\Docker Desktop Installer.exe'   
echo Перезагрузка компьютера через 5 секунд...
shutdown /r /t 5

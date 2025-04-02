@echo off
adb reboot bootloader
chcp 65001
set /p = Вошел в FastBoot?
fastboot flash boot magisk_patched.img
fastboot reboot

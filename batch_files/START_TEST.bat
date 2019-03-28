@echo off
//setlocal EnableExtensions EnableDelayedExpansion
//SETLOCAL DisableDelayedExpansion
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
echo Server monitored is not running, will be started now

set BaseModsFile=D:\Games\Steam\base_mods.txt



SET base_mods=mods="

FOR /F "usebackq delims=" %%a in (`"findstr /n ^^ %BaseModsFile%"`) do (
    set "var=%%a"
    SETLOCAL EnableDelayedExpansion
    set "var=!var:*:=!"
    SET "base_mods=%base_mods%!var!"
)









echo "base_mods:"
echo %base_mods%
pause


echo Server started succesfully


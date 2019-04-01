@echo off
setsetlocal enableDelayedExpansion enableExtensions

:: set v=!v! "-profiles=!cd!\Profiles"
:: set v=!v! "-par=!cd!\vietnam_par.txt"
set v=!v! "-profiles=C:\Games\steamapps\common\Arma 3\Profiles"
set v=!v! "-par=C:\Games\steamapps\common\Arma 3\vietnam_par.txt"

start "ArmA3" /wait "C:\Games\steamapps\common\Arma 3 Server\arma3server_x64.exe" !v!		&rem need "start" for closing cmd window;
timeout /t 1		&rem need for keeping game window (starting from logo) foreground after cmd window close;

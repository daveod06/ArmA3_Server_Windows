@echo off
setlocal enableDelayedExpansion enableExtensions

:: set v=!v! "-profiles=!cd!\Profiles"
:: set v=!v! "-par=!cd!\vietnam_par.txt"
set v=!v! "-profiles=C:\Games\steamapps\common\Arma 3\Profiles"
set v=!v! "-par=C:\Games\steamapps\common\Arma 3\vietnam_par.txt"

setlocal disableDelayedExpansion disableExtensions

start "ArmA3" /wait "C:\Games\steamapps\common\Arma 3 Server\arma3server_x64.exe" "-profiles=C:\Games\steamapps\common\Arma 3\Profiles" -port=2305 -showScriptErrors -autoinit -loadMissionToMemory -filePatching -world=empty -nosplash -skipIntro -name=server -bandwidthAlg=2 -server "-serverMod=" "-config=C:\Games\steamapps\common\Arma 3\config.cfg" "-cfg=C:\Games\steamapps\common\Arma 3\basic.cfg" "-mod=C:\Games\steamapps\common\Arma 3\!Workshop\@CBA_A3;C:\Games\steamapps\common\Arma 3\!Workshop\@RHSAFRF;C:\Games\steamapps\common\Arma 3\!Workshop\@RHSGREF;C:\Games\steamapps\common\Arma 3\!Workshop\@RHSSAF;C:\Games\steamapps\common\Arma 3\!Workshop\@RHSUSAF;C:\Games\steamapps\common\Arma 3\@Prei Khmaoch Luong;"


:: timeout /t 1		&rem need for keeping game window (starting from logo) foreground after cmd window close;

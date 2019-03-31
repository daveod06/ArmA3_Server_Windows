
@ECHO off
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
ECHO Server monitored is not running, will be started now

:: FILE PATHS
SET BaseModsFile=base_test.txt
SET CollectionModsFile=collection_test.txt
SET ServerArgsFile=server_args.txt
SET ServerExe="D:\Steam\steamapps\common\Arma 3 Server\arma3server_x64.exe"

:: BASE MODS
SET mods_arg="mod=
SETLOCAL EnableDelayedExpansion
FOR /f "delims=" %%x IN (%BaseModsFile%) DO (
	CALL SET mods_arg=%%mods_arg%%%%x
)

:: COLLECTION MODS
FOR /f "delims=" %%x IN (%CollectionModsFile%) DO (
	CALL SET mods_arg=%%mods_arg%%%%x
)
CALL SET mods_arg=%%mods_arg%%"

:: SERVER ARGS
SET server_args=
FOR /f "delims=" %%x IN (%ServerArgsFile%) DO (
	CALL SET server_args=%%server_args%% %%x
)

ECHO Starting ArmA 3 Server using:
ECHO START "ArmA3" /wait !ServerExe! !server_args! !mods_arg!
START "ArmA3" /wait !ServerExe! !server_args! !mods_arg!
:: START "ArmA3" /wait !ServerExe! -port=2305 -showScriptErrors -filePatching -world=empty -nosplash -skipIntro -loadMissionToMemory -name=server -bandwidthAlg=2 "-serverMod=" "-profiles=D:\Steam\steamapps\common\Arma 3 Server\Profiles" "-config=D:\Steam\steamapps\common\Arma 3 Server\config.cfg" "-cfg=D:\Steam\steamapps\common\Arma 3 Server\basic.cfg" "mod=C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@ALiVE;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CBA_A3;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Terrains - Core;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Terrains - Maps;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Enhanced Movement;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@MCC Sandbox 4 -  Mission Making The Easy Way;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Project OPFOR;C:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHSAFRF;"
:: START "ArmA3" /wait !ServerExe! "-par=server_args_test.txt"

PAUSE


ECHO Server started succesfully!

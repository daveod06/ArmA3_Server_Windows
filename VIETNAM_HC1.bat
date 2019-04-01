
@echo off
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
echo Server monitored is not running, will be started now

:: FILE PATHS
SET BaseModsFile=base_mods.txt
SET CollectionModsFile=vietnam_mods.txt
SET ServerArgsFile=headless_args1.txt
SET ServerExe="C:\Games\steamapps\common\Arma 3 Server\arma3server_x64.exe"

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

PAUSE



PAUSE


ECHO Server started succesfully!

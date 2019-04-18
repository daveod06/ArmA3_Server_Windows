@echo off
:: FILE PATHS
SET BaseModsFile=base_mods.txt
SET CollectionModsFile=wwii_mods.txt
SET ServerModsFile=server_mods.txt
SET ServerArgsFile=server_args.txt
SET HeadlessArgsFile=headless_args.txt
SET ServerExe="C:\Games\steamapps\common\Arma 3 Server\arma3server_x64.exe"

:: BASE MODS
SET mods_arg="-mod=
setlocal EnableDelayedExpansion
FOR /f "delims=" %%x IN (%BaseModsFile%) DO (
	CALL SET mods_arg=%%mods_arg%%%%x
)

:: COLLECTION MODS
FOR /f "delims=" %%x IN (%CollectionModsFile%) DO (
	CALL SET mods_arg=%%mods_arg%%%%x
)
CALL SET mods_arg=%%mods_arg%%"

:: SERVER MODS
SET server_mods_arg="-serverMod=
FOR /f "delims=" %%x IN (%ServerModsFile%) DO (
	CALL SET server_mods_arg=%%server_mods_arg%%%%x
)
CALL SET server_mods_arg=%%server_mods_arg%%"

:: SERVER ARGS
SET server_args=
FOR /f "delims=" %%x IN (%ServerArgsFile%) DO (
	CALL SET server_args=%%server_args%% %%x
)

:: HEADLES ARGS
SET headless_args=
FOR /f "delims=" %%x IN (%HeadlessArgsFile%) DO (
	CALL SET headless_args=%%headless_args%% %%x
)
CALL SET headless_args1=%%headless_args%% -name=HC1
CALL SET headless_args2=%%headless_args%% -name=HC2

setlocal disableDelayedExpansion disableExtensions

ECHO START "ArmA3" /wait %ServerExe% %server_args%  %server_mods_arg% %mods_arg%> WWII_SERVER.bat
ECHO START "ArmA3" /wait %ServerExe% %headless_args1% %mods_arg%> WWII_HC1.bat
ECHO START "ArmA3" /wait %ServerExe% %headless_args2% %mods_arg%> WWII_HC2.bat
@echo off
:: FILE PATHS
SET ServerArgsFile=server_args.txt
SET HeadlessArgsFile=headless_args.txt
SET ServerExe="C:\Games\steamapps\common\Arma 3 Server\arma3server_x64.exe"

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

ECHO START "ArmA3" /wait %ServerExe% %server_args%> VANILLA_SERVER.bat
ECHO START "ArmA3" /wait %ServerExe% %headless_args1%> VANILLA_HC1.bat
ECHO START "ArmA3" /wait %ServerExe% %headless_args2%> VANILLA_HC2.bat

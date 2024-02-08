@echo off
:: FILE PATHS
SET CollectionModsFile=sog_pf+ws_mods.txt
SET ServerModsFile=server_mods.txt
SET ServerArgsFile=server_args_sog_pf+ws.txt
SET ServerTESTArgsFile=server_TEST_args_sog_pf+ws.txt
SET HeadlessArgsFile=headless_args_sog_pf+ws.txt
SET ClientArgsFile=client_args_sog_pf+ws.txt
SET ServerExe="C:\Games\steamapps\common\Arma 3 Server\arma3server_x64.exe"
SET ClientExe="C:\Games\steamapps\common\Arma 3\arma3_x64.exe"

:: COLLECTION MODS
SET mods_arg="-mod=
setlocal EnableDelayedExpansion
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

:: SERVER TEST ARGS
SET server_test_args=
FOR /f "delims=" %%x IN (%ServerTESTArgsFile%) DO (
	CALL SET server_test_args=%%server_test_args%% %%x
)

:: HEADLESS ARGS
SET headless_args=
FOR /f "delims=" %%x IN (%HeadlessArgsFile%) DO (
	CALL SET headless_args=%%headless_args%% %%x
)

:: CLIENT ARGS
SET client_args=
FOR /f "delims=" %%x IN (%ClientArgsFile%) DO (
	CALL SET client_args=%%client_args%% %%x
)

CALL SET headless_args1=%%headless_args%% -name=HC1
CALL SET headless_args2=%%headless_args%% -name=HC2
CALL SET headless_args3=%%headless_args%% -name=HC3
CALL SET headless_args4=%%headless_args%% -name=HC4
CALL SET headless_args5=%%headless_args%% -name=HC5

setlocal disableDelayedExpansion disableExtensions

ECHO START "ArmA3" /wait %ServerExe% %server_args%  %server_mods_arg% %mods_arg%> SOG_PF+WS_SERVER.bat
ECHO START "ArmA3" /wait %ServerExe% %server_test_args%  %server_mods_arg% %mods_arg%> SOG_PF+WS_TEST_SERVER.bat
ECHO START "ArmA3" /wait %ServerExe% %headless_args1% %mods_arg%> SOG_PF+WS_HC1.bat
ECHO START "ArmA3" /wait %ServerExe% %headless_args2% %mods_arg%> SOG_PF+WS_HC2.bat
ECHO START "ArmA3" /wait %ClientExe% %client_args% %mods_arg%> SOG_PF+WS_CLIENT.bat
:: ECHO START "ArmA3" /wait %ServerExe% %headless_args3% %mods_arg%> SOG_PF+WS_HC3.bat
:: ECHO START "ArmA3" /wait %ServerExe% %headless_args4% %mods_arg%> SOG_PF+WS_HC4.bat
:: ECHO START "ArmA3" /wait %ServerExe% %headless_args5% %mods_arg%> SOG_PF+WS_HC5.bat
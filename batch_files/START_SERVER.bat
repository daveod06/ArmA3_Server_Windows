@echo off
setlocal EnableExtensions EnableDelayedExpansion
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
echo Server monitored is not running, will be started now

set BaseModsFile="D:\Games\Steam\steamapps\common\Arma 3 Server\batch_files\base_mods.txt"
//FOR %%i IN (%BaseModsFile%) DO IF EXIST %%~si\NUL ECHO It's a file
If Not Exist "%BaseModsFile%" (Goto :ErrorBase)

//set "CollectionModsFile=soviets_mods.txt"
//If Not Exist "%CollectionModsFile%" (Goto :ErrorCollection)

set ArgsFile="D:\Games\Steam\steamapps\common\Arma 3 Server\batch_files\server_args.txt"
//FOR %%i IN (%BaseModsFile%) DO IF EXIST %%~si\NUL ECHO It's a file again
If Not Exist "%ArgsFile%" (Goto :ErrorArgs)

SET base_mods=mods=

FOR /F %%l IN (%BaseModsFile%) DO (
	SET base_mods="%base_mods%%%l"
)

echo "base_mods:"
echo %base_mods%
pause

//for /F "usebackq tokens=*" %%A in ("my file.txt") do [process] %%A


//start "" /wait "C:\Games\Steam\steamapps\common\Arma 3 Server\arma3server_x64.exe" 
//-port=2302 
//"-profiles=C:\Games\Steam\steamapps\common\Arma 3 Server\Profiles"
//-config=CONFIG_Vanilla.cfg
//-world=empty
//-nosplash
//-skipIntro
//-loadMissionToMemory
//"-serverMod="
//-bandwidthAlg=2
//"-mod=D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@ALiVE;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CBA_A3;"




echo Server started succesfully

::***************************************************
:ErrorBase
cls & Color 4C
echo(
echo   ERROR: The file "%BaseModsFile%" does not exist !
Pause>nul
exit /b
::***************************************************

::***************************************************
:ErrorCollection
cls & Color 4C
echo(
echo   ERROR: The file "%CollectionModsFile%" does not exist !
Pause>nul
exit /b
::***************************************************

::***************************************************
:ErrorArgs
cls & Color 4C
echo(
echo   ERROR: The file "%ArgsFile%" does not exist !
Pause>nul
exit /b
::***************************************************
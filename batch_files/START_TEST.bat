@echo off
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
echo Server monitored is not running, will be started now

// FILE PATHS
set BaseModsFile=\\infc2_file\fileserv_data01\users\dj005112\Documents\server\base_mods.txt
set CollectionModsFile=\\infc2_file\fileserv_data01\users\dj005112\Documents\server\soviets_mods.txt
set ServerArgsFile=\\infc2_file\fileserv_data01\users\dj005112\Documents\server\server_args.txt
set ServerExe="C:\Games\Steam\steamapps\common\Arma 3 Server\arma3server_x64.exe"

// BASE MODS
SET mods_arg="mods=
SETLOCAL EnableDelayedExpansion
FOR /f "delims=" %%x IN (%BaseModsFile%) DO (
	CALL SET mods_arg=%%mods_arg%%%%x
)

// COLLECTION MODS
FOR /f "delims=" %%x IN (%CollectionModsFile%) DO (
	CALL SET mods_arg=%%mods_arg%%%%x
)
CALL SET mods_arg=%%mods_arg%%"

echo mods:
echo !mods_arg!

// SERVER ARGS
SET server_args=
FOR /f "delims=" %%x IN (%ServerArgsFile%) DO (
	CALL SET server_args=%%server_args%% %%x
)


echo server args:
echo !server_args!

SET full_command=start "" /wait !ServerExe! !server_args! !mods_arg!
echo Starting ArmA 3 Server using:
echo !full_command!

start "" /wait !ServerExe! !server_args! !mods_arg!

pause


echo Server started succesfully!

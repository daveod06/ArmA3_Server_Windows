
@echo off
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server_x64.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server_x64.exe">NUL
echo Server monitored is not running, will be started now
start "" /wait "C:\Games\Steam\steamapps\common\Arma 3 Server\arma3server_x64.exe" -port=2302 "-profiles=C:\Games\Steam\steamapps\common\Arma 3 Server\Profiles" -config=CONFIG_Vanilla.cfg -world=empty -nosplash -skipIntro -loadMissionToMemory "-serverMod=" -bandwidthAlg=2 "-mod=D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@ALiVE;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CBA_A3;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Chernarus winter With fixed footsteps;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Terrains - Core;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Terrains - Maps;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Units;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Vehicles;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CUP Weapons;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Enhanced Movement;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@MCC Sandbox 4 -  Mission Making The Easy Way;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms AK - CUP Compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms AK - RHS Compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms AK Rifles;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms Core;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Project OPFOR;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHSAFRF;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHSGREF;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHSSAF;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHSUSAF;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHS- USAF CUP Weapons Mag compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHS- SAF CUP Weapons Mag compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHS- GREF CUP Weapons Mag compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@RHS- AFRF CUP Weapons Mag compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@CH View Distance;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Simple Single Player Cheat Menu;D:\Games\Steam\steamapps\common\Arma 3\@Cold-War-Soviets;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms M14 Rifles;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms M14 - CUP Compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms M14 - RHS Compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms M60 GPMGs;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms M60 - CUP Compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@NIArms M60 - RHS Compatibility;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Immersion Cigs;D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@The_Unsung_Vietnam_War_Mod;D:\Games\Steam\steamapps\common\Arma 3\@Prei Khmaoch Luong;"

echo Server started succesfully

// D:\Games\Steam\steamapps\common\Arma 3\!Workshop\@Simple Single Player Cheat Menu;
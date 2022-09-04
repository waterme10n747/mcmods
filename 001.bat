set HOME=%cd%
timeout /t 0.1
set MC=%userprofile%/AppData/Roaming/.minecraft
echo "%MC%"

mkdir "%MC%/mods/"

cd "%MC%/mods/"
del /f /q "*appleskin*.jar"
del /f /q "*fabric*.jar"
del /f /q "*modmenu*.jar"
del /f /q "*optifabric*.jar"
del /f /q "*optifine*.jar"
del /f /q "*torohealth*.jar"
del /f /q "*VoxelMap*.jar"

cd "%HOME%/mods"
copy /y "*.*" "%MC%/mods/"
cd "%HOME%"

mkdir "%MC%/shaderpacks/"

cd "%MC%/shaderpacks/"
del /f /q "*AstraLex*.zip"
del /f /q "*BSL*.zip"
del /f /q "*Complementary*.zip"
del /f /q "*Oceano*.zip"

cd "%HOME%/shaderpacks"
copy /y "*.*" "%MC%/shaderpacks/"
cd "%HOME%"

mkdir "%MC%/resourcepacks/"

cd "%HOME%/resourcepacks"
copy /y "*.*" "%MC%/resourcepacks/"
cd "%HOME%"

start %MC%/mods/ explorer
start %MC%/shaderpacks/ explorer
start %MC%/resourcepacks/ explorer

"002*.exe"

@echo off
title Kade Engine Haxe Libraries Installer
echo.
echo KADE ENGINE HAXE LIBRARY STUFF GO BRRRRRRRR
echo.
echo Checking Haxe...
echo.
IF EXIST "C:\HaxeToolkit\haxe\haxelib.exe" (
  echo [GOOD]  Setup detected Haxe installed properly.
) ELSE (
  echo [ERROR] Setup detected Haxe not properly installed.
  echo Press any key to close...
  pause>NUL
  exit
)
IF EXIST "C:\HaxeToolkit\neko\neko.exe" (
  echo [GOOD]  Setup detected Neko installed properly.
) ELSE (
  echo [ERROR] Setup detected Neko not properly installed.
  echo Press any key to close...
  pause>NUL
  exit
)

IF EXIST "C:\Program Files\Git\bin" (
  echo [GOOD]  Setup detected Git installed properly.
) ELSE (
  echo [ERROR] Setup detected Git not properly installed.
  echo Press any key to close...
  pause>NUL
  exit
)

echo System passed verification successfully! Starting setup in 3 seconds...
timeout /t 3 /nobreak>NUL
cls
color 1F
echo.
echo KADE ENGINE HAXE LIBRARY STUFF GO BRRRRRRRR
echo.
echo [INFO] Installing "lime" 7.9.0...
echo.
haxelib install lime 7.9.0
echo.
echo [INFO] Installing "openfl" latest...
echo.
haxelib install openfl
echo.
echo [INFO] Installing "flixel" latest...
echo.
haxelib install flixel
echo.
echo [INFO] Running "lime" setup...
echo.
haxelib run lime setup
haxelib run lime setup flixel
echo.
echo [INFO] Installing "flixel-tools" latest...
echo.
haxelib install flixel-tools
haxelib run flixel-tools setup
echo.
echo [INFO] Installing "flixel-addons" latest...
echo.
haxelib install flixel-addons
echo.
echo [INFO] Installing "flixel-ui" latest...
echo.
haxelib install flixel-ui
echo.
echo [INFO] Installing "hscript" latest...
echo.
haxelib install hscript
echo.
echo [INFO] Installing "newgrounds" latest...
echo.
haxelib install newgrounds
echo.
echo [INFO] Installing "linc_luajit" latest...
echo.
haxelib install linc_luajit
echo.
echo [INFO] Adding git "faxe"...
echo.
haxelib git faxe https://github.com/uhrobots/faxe
echo.
echo [INFO] Adding git "polymod"...
echo.
haxelib git polymod https://github.com/larsiusprime/polymod.git
echo.
echo [INFO] Adding git "discord_rpc"...
echo.
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
echo.
echo [INFO] Installing "actuate" latest...
echo.
haxelib install actuate
echo.
echo [INFO] Adding git "extension-webm"...
echo.
haxelib git extension-webm https://github.com/KadeDev/extension-webm
echo.
echo [INFO] Rebuilding "extension-webm"...
echo.
lime rebuild extension-webm windows
echo.
echo [FINISH] Setup finished installing all required Haxe libraries.
echo Press any key to close...
pause>NUL
exit
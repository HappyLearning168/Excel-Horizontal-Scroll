@echo off

set APPDIR=%LOCALAPPDATA%\ExcelHorizontalScroll
set STARTUP=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup

mkdir "%APPDIR%" 2>nul

copy "%~dp0AutoHotkey64.exe" "%APPDIR%" /Y
copy "%~dp0ExcelScroll.ahk" "%APPDIR%" /Y

(
echo @echo off
echo start "" "%APPDIR%\AutoHotkey64.exe" "%APPDIR%\ExcelScroll.ahk"
) > "%STARTUP%\ExcelHorizontalScroll.bat"

start "" "%APPDIR%\AutoHotkey64.exe" "%APPDIR%\ExcelScroll.ahk"

echo.
echo Excel Horizontal Scroll installed successfully.
pause
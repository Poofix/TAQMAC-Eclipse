@echo off
set delay=1

mkdir "%~dp0..\..\Data\tmp"

if exist "%CD%\App\eclipse\jre\bin\javaws.exe" (
  start /d "%~dp0..\eclipse" eclipse.exe
) else (
    IF /I "%delay%" EQU "1" TIMEOUT /T 1
    xcopy "%~dp0..\..\CommonFiles\Java64" "%~dp0..\eclipse\jre" /e /i /Y
    IF /I "%delay%" EQU "1" TIMEOUT /T 1
    start /d "%~dp0..\eclipse" eclipse.exe
)
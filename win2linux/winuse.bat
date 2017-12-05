@echo off
set "cd_=%cd%"
:loop
set "cd_=%cd_:*\=%"
set "cd_tmp=%cd_:\=%"
if not "%cd_tmp%"=="%cd_%" goto loop
(for /f "delims=" %%a in ('dir /a-d /b /os^|find /i /v "%~nx0"') do (
echo;%%~za %%a
))>"%cd_%.txt"
pause
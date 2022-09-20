@echo off
rem 7z.exe path
set sevenzip=
if [%1]==[] echo file not found&pause&exit
if "%sevenzip%"=="" if exist "%ProgramFiles(x86)%\7-zip\7z.exe" set sevenzip=%ProgramFiles(x86)%\7-zip\7z.exe
if "%sevenzip%"=="" if exist "%ProgramFiles%\7-zip\7z.exe" set sevenzip=%ProgramFiles%\7-zip\7z.exe
if "%sevenzip%"=="" if exist "E:\.P_Files\7-Zip" set sevenzip=E:\.P_Files\7-Zip 
if "%sevenzip%"=="" echo 7-zip not found&pause&exit
cd /d %~dp1||(echo ERROR&pause&exit)
echo %~dp1
echo %~x1
pause
for %%a in (*%~x1) do "%sevenzip%" a "%%~na.7z" "%%a"
pause
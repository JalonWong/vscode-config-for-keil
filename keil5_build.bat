@echo off
set UV=%~dp0%UV4\UV4.exe

set binpath=%3
if not defined binpath goto build
if %binpath%=="" goto build

if exist %binpath%".bin" (
    DEL %binpath%".bin"
)

if exist %binpath%".axf" (
    DEL %binpath%".axf"
)
:build

echo Building...
"%UV%" -j0 %2 %1 -o build_log.txt
type "%~dp1%""build_log.txt"
echo Done.

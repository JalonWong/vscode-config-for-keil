@echo off
set UV=%~dp0%UV4\UV4.exe

echo Building...
%UV% -j0 %2 %1 -o build_log.txt
type %~dp1%build_log.txt
echo Done.

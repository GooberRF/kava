@echo off

echo Building kava_rfl.vpp...

:: clear build index file first
> .\_tools\_build_kava_rfl.txt echo.

(for /f "delims=" %%i in ('dir /b .\rfl ^| find /v "~.rfl"') do (
    @echo rfl\%%i >> .\_tools\_build_kava_rfl.txt
)) 

.\_tools\ccrunch.exe kava_rfl.vpp .\_tools\_build_kava_rfl.txt > nul
move .\kava_rfl.vpp ..\kava_rfl.vpp > nul

echo Finished building kava_rfl.vpp.
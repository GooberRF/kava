@echo off

echo Building kava_tex.vpp...

(for /f %%i in ('dir /b .\tex') do @echo tex\%%i) > .\_tools\_build_kava_tex.txt
.\_tools\ccrunch.exe kava_tex.vpp .\_tools\_build_kava_tex.txt > nul
move .\kava_tex.vpp ..\kava_tex.vpp > nul

echo Finished building kava_tex.vpp.
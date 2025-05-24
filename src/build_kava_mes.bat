@echo off

echo Building kava_mes.vpp...

(for /f %%i in ('dir /b .\mes') do @echo mes\%%i) > .\_tools\_build_kava_mes.txt
.\_tools\ccrunch.exe kava_mes.vpp .\_tools\_build_kava_mes.txt > nul
move .\kava_mes.vpp ..\kava_mes.vpp > nul

echo Finished building kava_mes.vpp.
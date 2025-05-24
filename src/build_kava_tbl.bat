@echo off

echo Building kava_tbl.vpp...

(for /f %%i in ('dir /b .\tbl') do @echo tbl\%%i) > .\_tools\_build_kava_tbl.txt
.\_tools\ccrunch.exe kava_tbl.vpp .\_tools\_build_kava_tbl.txt > nul
move .\kava_tbl.vpp ..\kava_tbl.vpp > nul

echo Finished building kava_tbl.vpp.
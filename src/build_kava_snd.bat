@echo off

echo Building kava_snd.vpp...

(for /f %%i in ('dir /b .\snd') do @echo snd\%%i) > .\_tools\_build_kava_snd.txt
.\_tools\ccrunch.exe kava_snd.vpp .\_tools\_build_kava_snd.txt > nul
move .\kava_snd.vpp ..\kava_snd.vpp > nul

echo Finished building kava_snd.vpp.
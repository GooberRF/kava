@echo off

echo Building all data packfiles...

echo.
call .\build_kava_rfl.bat
echo.
call .\build_kava_tbl.bat
echo.
call .\build_kava_tex.bat
echo.
call .\build_kava_mes.bat
echo.

echo Build complete!
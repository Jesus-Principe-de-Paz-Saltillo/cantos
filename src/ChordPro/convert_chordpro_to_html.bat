@echo off
REM ==========================================
REM ChordPro to HTML Converter (Windows)
REM Drag and drop a .chordpro or .cho file
REM ==========================================

if "%~1"=="" (
    echo.
    echo Please drag and drop a .chordpro or .cho file onto this script.
    echo.
    pause
    exit /b
)

set INPUT_FILE=%~1
set OUTPUT_FILE=%~dpn1.html

echo.
echo Converting:
echo %INPUT_FILE%
echo.
echo Output:
echo %OUTPUT_FILE%
echo.

chordpro "%INPUT_FILE%" -o "%OUTPUT_FILE%"

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Conversion failed.
    pause
    exit /b
)

echo.
echo Conversion successful!
echo.
pause

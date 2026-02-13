@echo off

if "%~1"=="" (
    echo Drag and drop a file onto this script.
    pause
    exit /b
)

set INPUT_FILE=%~1
set OUTPUT_FILE=%~dpn1_lyrics.html

chordpro "%INPUT_FILE%" --lyrics-only -o "%OUTPUT_FILE%"

if %errorlevel% neq 0 (
    echo Conversion failed.
    pause
    exit /b
)

echo Done.
pause

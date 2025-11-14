@echo off
echo Building Aetheric Water Optimizer...
echo.

REM Activate virtual environment and build
call venv\Scripts\activate.bat
pyinstaller --onefile --windowed --name "AethericWaterOptimizer" --icon=NONE watercalc.py

echo.
echo Build complete! Executable is in the 'dist' folder.
echo.
pause

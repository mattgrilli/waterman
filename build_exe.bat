@echo off
echo Building Aetheric Water Optimizer...
echo.

REM Activate virtual environment and build
call venv\Scripts\activate.bat

REM Build using the spec file (includes admin manifest)
pyinstaller AethericWaterOptimizer.spec --clean

echo.
echo Build complete! Executable is in the 'dist' folder.
echo The exe will request admin privileges when run.
echo.
pause

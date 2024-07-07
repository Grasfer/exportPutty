@echo off
REM Get the current working directory where the script is run
SET currentDirectory=%cd%

REM Define the output file path including the current directory and dynamic date in the filename
SET outputFilePath=%currentDirectory%\putty_%date%.reg

REM Run regedit command to export registry data, using the dynamically constructed output file path
cmd /c "regedit /e "%outputFilePath%" HKEY_CURRENT_USER\Software\SimonTatham"
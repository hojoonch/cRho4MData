@echo off
setlocal

REM List of files to copy
set files=("IP2024-10-21-11-33.json" "IP2024-10-21-11-33-001.dat" "IP2024-10-21-11-33-002.dat")
set destination=..\

REM Loop through each file and copy with delay
REM for %%f in %files% do (
for %%f in ("*.json" "*.dat") do (
    copy %%f %destination%
    timeout /t 2 /nobreak > nul
)

endlocal

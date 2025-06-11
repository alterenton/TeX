@echo off
REM ==== CONFIGURACIÓN ====
set TEX_FILE=Principal.tex
set OUT_DIR=Construccion
set AUX_DIR=Auxiliares
set JOB_NAME=MiTesis2025

REM ==== COMPILACIÓN ====
for /l %%i in (1,1,2) do (
    lualatex ^
    --aux-directory=%AUX_DIR% ^
    --output-directory=%OUT_DIR% ^
    --jobname=%JOB_NAME% ^
    --interaction=nonstopmode ^
    --recorder ^
    --halt-on-error ^
    %TEX_FILE%
)

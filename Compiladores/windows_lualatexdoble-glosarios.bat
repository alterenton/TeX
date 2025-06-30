@echo off

@REM echo %~dp0

@REM set "basedir=%~dp0"
@REM set "auxdir=%basedir%\..\Auxs"
set "auxdir=Auxs"
set "resul=output"

@REM if not exist "%auxdir%" (
@REM     echo Creando directorio Aux...
@REM     mkdir "%auxdir%"
@REM )

lualatex ^
--halt-on-error ^
--interaction=nonstopmode ^
--recorder ^
--jobname="%resul%" ^
--output-directory="%auxdir%" ^
main.tex

makeglossaries ^
-d "%auxdir%" ^
"%resul%"

lualatex ^
--halt-on-error ^
--interaction=nonstopmode ^
--recorder ^
--jobname="%resul%" ^
--output-directory="%auxdir%" ^
main.tex

lualatex ^
--halt-on-error ^
--interaction=nonstopmode ^
--recorder ^
--jobname="%resul%" ^
--output-directory="%auxdir%" ^
main.tex

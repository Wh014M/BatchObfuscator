@echo off
if "%~1"=="" exit /b
if /i "%~x1" neq ".bat" if /i "%~x1" neq ".cmd" exit /b
if exist "%~n1___%~x1" del "%~n1___%~x1"
for /f "skip=1 delims=" %%L in ('CMD /U /C Type "%~1"') do (
   echo %%L
   echo %%L >>"%~n1___%~x1"
)
pause>nul
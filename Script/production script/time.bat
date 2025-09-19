@echo off
setlocal enabledelayedexpansion

:: Get the current date and time in a more reliable way
for /f "tokens=2-4 delims=:- " %%a in ('wmic os get localdatetime ^| find "."') do (
    set year=%%a
    set month=%%b
    set day=%%c
    set hour=%%d
    set minute=%%e
    set second=%%f
)

:: Reformat the date and time
set year=%year:~0,4%
set month=%month:~0,2%
set day=%day:~0,2%
set hour=%hour:~0,2%
set minute=%minute:~0,2%
set second=%second:~0,2%

:: Create date and time string
echo %year%_%month%_%day%_%hour%_%minute%_%second% > "D:\DATABASE\POSTGRESQL\Script\shell script\date_1.txt"
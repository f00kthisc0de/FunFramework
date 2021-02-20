::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAhVQR2+GG6pDaET+NTd2sS4hH88eccIV73w5qeNMukD/gvhbZNN
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off 
color a
CLS
:MAIN
cls
echo HAVE FUN 
ECHO.
ECHO [1] OPEN A WEBSITE 
ECHO [2] KILL PROCESS
ECHO [3] START PROGRAMMS 
ECHO [4] OPEN CD_DRIVE
ECHO [5] BLACKOUT
ECHO [6] POWEROFF
ECHO [7] NOTEPAD 
ECHO [8] CMD
ECHO [9] CENTER EVERYTHING
ECHO [10] HIDE THE CLOCK 
ECHO [11] SOUNDTOOLS
ECHO [12] TALK
ECHO [13] LOGOUT
ECHO [14] OPEN NOTEPAD WITH TEXT 
ECHO [15] EN OR DISABLE MOUSE 
ECHO [0] EXIT
ECHO.
ECHO.

SET /P ANS="OPT :"

IF %ANS% EQU 1 GOTO WEBSITE
IF %ANS% EQU 2 GOTO KILL 
IF %ANS% EQU 3 GOTO START_PROGRAMM
IF %ANS% EQU 4 GOTO CD_DRIVE_TOOLS
IF %ANS% EQU 5 GOTO BLACKOUT
IF %ANS% EQU 6 GOTO POWEROFF
IF %ANS% EQU 7 GOTO NOTEPAD 
IF %ANS% EQU 8 GOTO CMD
IF %ANS% EQU 9 GOTO CENTER
IF %ANS% EQU 10 GOTO CLOCKTRICKS 
IF %ANS% EQU 11 GOTO SOUNDTOOL
IF %ANS% EQU 12 GOTO TALK
IF %ANS% EQU 13 GOTO LOGOUT
IF %ANS% EQU 0 GOTO EXIT 
IF %ANS% EQU 14 GOTO NOTEPADTEXT
IF %ANS% EQU 15 GOTO MOUSKIT
:WEBSITE 
CLS
SET /P SITE="WEBSITE :"
TIMEOUT 1 >NUL
ECHO.
ECHO STARTING http://%SITE%.com
START FIREFOX http://%SITE%.com
GOTO MAIN 

:CD_DRIVE_TOOLS
echo Set oWMP = CreateObject("WMPlayer.OCX.7")  >> %temp%\temp.vbs
echo Set colCDROMs = oWMP.cdromCollection       >> %temp%\temp.vbs
echo For i = 0 to colCDROMs.Count-1             >> %temp%\temp.vbs
echo colCDROMs.Item(i).Eject                    >> %temp%\temp.vbs
echo next                                       >> %temp%\temp.vbs
echo oWMP.close                                 >> %temp%\temp.vbs
%temp%\temp.vbs
timeout /t 1 >nul 
del %temp%\temp.vbs
echo. 
ECHO [1] OPEN CD_DRIVE
ECHO [2] CLOSE CD_DRIVE
ECHO.
SET /P OPT="OPT :"

IF %OPT% EQU 1 nircmd.exe cdrom open j:
IF %OPT% EQU 2 nircmd.exe cdrom close y:
GOTO MAIN 

:KILL 
CLS
echo ----------------------------------------------------
TASKLIST 
echo ----------------------------------------------------
SET /P PROC="PROCESS:"
CLS
ECHO KILLING PROCESS 
TASKKILL /IM %PROC%.exe /f 
echo killed.
goto main 


:BLACKOUT
CLS
ECHO TURNING OF THE SCREEN 
nircmd.exe monitor off 
TIMEOUT 2 >NUL  \
GOTO MAIN 


:POWEROFF
CLS
ECHO POWERING OF THE SYSTEM...
SHUTDOWN -H 
GOTO MAIN 


:NOTEPAD 
CLS
ECHO STARTING NOTEPAD 
START NOTEPAD 
GOTO MAIN 

:CMD 
CLS 
ECHO STARTING CMD.EXE
CMD
GOTO MAIN 

:CENTER 
nircmd.exe win center alltop 


:CLOCKTRICKS
CLS
ECHO [1] SHOW CLOCK
ECHO [2] HIDE CLOCK 
ECHO.
SET /P OPT="OPT"

IF %OPT% EQU 1 nircmd.exe win child class "Shell_TrayWnd" show class "TrayClockWClass" 
IF %OPT% EQU 2 nircmd.exe win child class "Shell_TrayWnd" hide class "TrayClockWClass
GOTO MAIN 

:SOUNDTOOL
CLS
ECHO [1] MUTE SYSTEM
ECHO [2] UNMUTE 
ECHO.
SET /P OPT="OPT :"

IF %OPT% EQU 1 nircmd.exe mutesysvolume 1
IF %OPT% EQU 2 nircmd.exe mutesysvolume 0 
GOTO MAIN 

:TALK 
CLS
ECHO SPEAKS THE STUFF IN CLPIBOARD
set /p say="say :"
NIRCMD.EXE speak text "%say%"
GOTO MAIN 

:LOGOUT
CLS
SHUTDOWN -L 
GOTO MAIN 

:EXIT
CLS
ECHO OK BOSS SEE YOU SOON
ENDLOCAL 
EXIT
GOTO MAIN 

:NOTEPADTEXT 
DEL WORDS.TXT
CLS
ECHO WHAT SHOULD NOTEPAD SAY ?
SET /P INPUT="TEXT :"
CLS
ECHO OPENING NOTEPAD 
ECHO %INPUT% >>WORDS.TXT
START WORDS.TXT 
GOTO MAIN

:MOUSKIT
CLS
ECHO [1] ENABLE MOUSE
ECHO [2] DISABLE MOUSE 
SET /P MS="OPT :"

IF %MS% EQU 1 START msd.bat
if %MS% EQU 2 START bcamsd.bat
GOTO MAIN 

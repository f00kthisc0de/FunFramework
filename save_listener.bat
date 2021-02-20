@echo off 

echo Protokoll is Active 
ncat -lvk -p  4444 -e script.bat --allowfile allowed.txt
pause >nul 
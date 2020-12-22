@echo off
title Spoofing...
color 1
cd %~dp0
Systemp.exe System32LE.sys System32TE.sys
CLS
timeout /t 1 /nobreak > NUL
CLS
timeout /t 1 /nobreak > NUL
CLS
exit
PAUSE

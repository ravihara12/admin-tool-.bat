@echo off
title deconeV1
chcp 65001 >nul
color b
goto banner
:banner
echo.
echo demoneV1
echo.
pause
cls
color 4
goto menu
:menu
echo.
echo          =============================
echo          =                           = 
echo          = 1. remove admin from user =
echo          = 2. get admin              = 
echo          = 3. exit                   =
echo          =                           =
echo          =                           =  
echo          =============================

set /p input=">  "

if %input% EQU 1 (
set /p name="targetuser:  "
net user %name% /active:no
pause
cls
color b
goto banner
)

if %input% EQU 2 (
set /p name="tergetuser:  "
net user %name% /active:yes
pause
cls
color b
goto banner
) 

if %input% EQU 3 (
exit
)
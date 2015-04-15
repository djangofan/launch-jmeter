@ECHO off
SET WINDOW_TITLE=Jmeter via Maven launcher
TITLE=%WINDOW_TITLE%
ECHO Closing this window will close Jmeter...
IF NOT DEFINED M2_HOME ECHO It appears you are missing the Maven installation on your system.
IF NOT DEFINED JAVA_HOME ECHO You need to define JAVA_HOME on your system.

CALL mvn.bat jmeter:gui

::-------------------------------------------------------------------
::  End script
::-------------------------------------------------------------------
:END
FOR /l %%a IN (10,-1,1) DO (TITLE %WINDOW_TITLE% -- Closing in %%as&PING.exe -n 2 -w 1 127.0.0.1>nul)

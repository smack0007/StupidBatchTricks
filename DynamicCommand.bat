@ECHO OFF
REM EnableDelayedExpansion necessary for !command! later
SETLOCAL EnableDelayedExpansion

SET command=ECHO These are the root directories:

REM Loop through all directories on c:\
FOR /F "tokens=*" %%A IN ('dir c:\ /b /ad') DO (
	REM !command! says to use the current value of the variable
	REM and not the value of the variable when the loop started
	SET command=!command! %%A
)

REM Execute the command
%command%

ENDLOCAL
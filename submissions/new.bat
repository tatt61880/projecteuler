@echo off

set INPUT=
:RETRY
set /p INPUT="”Ô†‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢: "
if "%INPUT%"=="" (
	goto :RETRY
)
if exist %INPUT% (
	echo %INPUT% ‚ÍŠù‚É‘¶Ý‚µ‚Ü‚·B
	goto :RETRY
)

xcopy /S /I .\_template .\%INPUT% > nul
.\%INPUT%\main.kn

@echo off

:RETRY
set INPUT=
set /p INPUT="”Ô†‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢: "
if "%INPUT%"=="" (
	goto :RETRY
)
if not exist %INPUT% (
  xcopy /S /I .\_template .\%INPUT% > nul
)

start .\%INPUT%\main.kn
start https://projecteuler.net/problem=%INPUT%


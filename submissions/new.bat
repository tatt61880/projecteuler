@echo off
setlocal

:RETRY
set ID=
set /p ID="���ԍ�����͂��Ă�������: "
if "%ID%" == "" (
  goto :RETRY
)
if not exist %ID% (
  xcopy /S /I .\_template .\%ID% > nul
)

start .\%ID%\main.kn
start https://projecteuler.net/problem=%ID%

@echo off
setlocal

:RETRY
set ID=
set /p ID="問題番号を入力してください: "
if "%ID%" == "" (
  goto :RETRY
)
if not exist %ID% (
  xcopy /S /I .\_template .\%ID% > nul
)

start .\%ID%\main.kn
start https://projecteuler.net/problem=%ID%

@echo off

:RETRY
set INPUT=
set /p INPUT="番号を入力してください: "
if "%INPUT%"=="" (
  goto :RETRY
)
if not exist %INPUT% (
  xcopy /S /I .\_template .\%INPUT% > nul
)

start .\%INPUT%\main.kn
start https://projecteuler.net/problem=%INPUT%

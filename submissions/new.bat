@echo off

:RETRY
set INPUT=
set /p INPUT="�ԍ�����͂��Ă�������: "
if "%INPUT%"=="" (
	goto :RETRY
)
if not exist %INPUT% (
  xcopy /S /I .\_template .\%INPUT% > nul
)

start .\%INPUT%\main.kn
start https://projecteuler.net/problem=%INPUT%


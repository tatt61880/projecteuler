@echo off

set INPUT=
:RETRY
set /p INPUT="番号を入力してください: "
if "%INPUT%"=="" (
	goto :RETRY
)
if exist %INPUT% (
	echo %INPUT% は既に存在します。
	goto :RETRY
)

xcopy /S /I .\_template .\%INPUT% > nul
start .\%INPUT%\main.kn

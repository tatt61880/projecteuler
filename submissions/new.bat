@echo off

set INPUT=
:RETRY
set /p INPUT="�ԍ�����͂��Ă�������: "
if "%INPUT%"=="" (
	goto :RETRY
)
if exist %INPUT% (
	echo %INPUT% �͊��ɑ��݂��܂��B
	goto :RETRY
)

xcopy /S /I .\_template .\%INPUT% > nul
.\%INPUT%\main.kn

@echo off

set logfile=C:\inetpub\logs\sample-log.txt

for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%-%ldt:~4,2%-%ldt:~6,2% %ldt:~8,2%:%ldt:~10,2%:%ldt:~12,6%

(echo [%ldt%]) >> %logfile%

(echo [Copying files to c:\inetpub\wwwroot\files\sample]) >> %logfile%
xcopy /y /e /r /i c:\temp\sample c:\inetpub\wwwroot\files\sample >> %logfile%

(echo.) >> %logfile%
(echo [Removing c:\temp\sample]) >> %logfile%
IF EXIST c:\temp\sample (
	rmdir /q /s c:\temp\sample
)

EXIT /B 0
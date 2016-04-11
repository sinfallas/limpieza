@echo off
ipconfig /flushdns
net stop dnscache
dnscache net start

net stop spooler
del %SystemRoot%\system32\spool\PRINTERS\*.* /Q
net start spooler

cd c:\usuarios\%username%\AppData\Local
rmdir /S /Q Temp
cd ..

del %TEMP%\* /s /f /q
del c:\windows\*.tmp /s /f /q
del c:\windows\*.bak /s /f /q
del c:\windows\*.old /s /f /q

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351

chkdsk c: /f /r /x

exit

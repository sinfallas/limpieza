@echo off

ipconfig /release *
net stop "dhcp client" 
net stop "dns client" 
net stop "network connections" 
net start "dhcp client" 
net start "dns client" 
net start "network connections" 
ipconfig /flushdns
ipconfig /renew *

net stop spooler
del %SystemRoot%\system32\spool\PRINTERS\*.* /Q
net start spooler

cd c:\usuarios\%username%\AppData\Local
rmdir /S /Q Temp
cd ..

cd C:\$Recycle.Bin\
del /q /f /s /a r h s *.*
cd ..

del %TEMP%\*.* /s /f /q
del c:\windows\*.tmp /s /f /q
del c:\windows\*.bak /s /f /q
del c:\windows\*.old /s /f /q


del /P /S "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\History*"
del /P /S "C:\Users\%username%\AppData\Roaming\Mozilla\Firefox\Profiles\places.sqlite*"

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351

defrag /c /h /u

chkdsk c: /f /r /x

reboot

exit

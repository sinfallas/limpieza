@echo off
net stop spooler
del %systemroot%system32spoolPRINTERS*.* /Q
net start spooler

ipconfig /flushdns

cd c:\usuarios\%username%\AppData\Local
rmdir /S /Q Temp

cd ..

cd windows
del *.tmp /s /f /q
del *.bak /s /f /q
del *.old /s /f /q

cd ..

exit

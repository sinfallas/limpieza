@echo off
net stop spooler
del %systemroot%system32spoolPRINTERS*.* /Q
net start spooler

ipconfig /flushdns

cd C:Users%username%AppDataLocal
rmdir /S /Q Temp

exit

@echo off
net stop spooler
del %systemroot%system32spoolPRINTERS*.* /Q
net start spooler
exit

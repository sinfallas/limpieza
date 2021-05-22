@echo off  
color a  
set/p U=Cual es la unidad a desinfectar?  
pause  
echo Por favor espere...  
attrib -r -a -h -s %U%:\*.* /S /D  
echo rd C:\8585485 /S  
echo Finalizado  
pause

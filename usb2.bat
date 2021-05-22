@echo off
title Memoria Flash Patch Updated Chanag 14-06-2012.
color 0A
@echo ----------------------------------------------
@echo REPARACION DE ARCHIVOS Y CARPETAS MEMORIA USB
@echo ----------------------------------------------
@echo Estado: Cambiando atributos
Attrib -r -h -s *.* /d /s
@echo ----------------------------------------------
@echo Estado: Eliminado Accesos Directos
if exist *.lnk del *.lnk
@echo ----------------------------------------------
@echo ----------------------------------------------
@echo Estado: Operacion Terminada
@echo ----------------------------------------------
@echo ----------------------------------------------
@echo ----------------------------------------------
cls
@echo ----------------------------------------------
@echo --------- Segunda Parte de la vacuna ---------
@echo ----------------------------------------------
@echo -- Verificando memoria - Estado autorun.inf.--
if exist autorun.inf goto delete
If exist Autorun.inf/desktop.ini goto end
@echo ------------- Creando carpeta ----------------
:create
md autorun.inf
IF EXIST Autorun.inf/DESKTOP.INI GOTO END
ECHO [.ShellClassInfo]>>Autorun.inf/DESKTOP.INI
ECHO CLSID={645FF040-5081-101B-9F08-00AA002F954E}>>Autorun.inf/DESKTOP.INI
attrib autorun.inf/Desktop.ini +h +s +r +a
goto end
@echo ------------ Eliminando amenaza --------------
:delete
attrib autorun.inf -h -s -r -a
del autorun.inf /q
goto create
:END
@echo ---------- Terminando actividades ------------
attrib Autorun.inf +h +s +r +a
@echo ----------------- Chanag ---------------------
@echo Presione cualquier tecla para finalizar
cls
@echo la siguiente parte es Opcional
@Echo Presione: 0 para continuar, 1 para salir
set /p var=¿Continuar o salir?
if %var%==0 (call :menu0)
if %var%==1 (call :menu1)

:menu0
@echo Borrando carpeta/archivo RECYCLER
echo off
attrib RECYCLER -h -s -r -a
del RECYCLER /q
rd/s RECYCLER /q
cls

@echo Borrando carpeta/archivo CONFIG
attrib CONFIG -h -s -r -a
del CONFIG /q
rd/s CONFIG /q
cls

@echo Borrando carpeta/archivo Recycled
attrib Recycled -h -s -r -a
del Recycled /q
rd/s Recycled /q
cls

@echo Borrando carpeta/archivo Recycle
attrib Recycle -h -s -r -a
del Recycle /q
rd/s Recycle /q


@echo Borrando carpeta/archivo RECYCLERTEMP
attrib RECYCLERTEMP -h -s -r -a
del RECYCLERTEMP /q
rd/s RECYCLERTEMP /q

@echo Borrando carpeta/archivo USBSYSTEM
attrib USBSYSTEM -h -s -r -a
del USBSYSTEM /q
rd/s USBSYSTEM /q

@echo Borrando carpeta/archivo FOUND.000
attrib FOUND.000 -h -s -r -a
del FOUND.000 /q
rd/s FOUND.000 /q

cls

:menu1
cls
@echo Gracias por usar este corto codigo, hemos terminado.
@echo Chanag, presione una tecla para salir.
pause>nul
exit

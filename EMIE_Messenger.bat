@echo on
@echo.
@echo PLEASE DO NOT CLOSE THIS WINDOW DURING SETUP PROCESS.
@echo.
@echo.
@echo Internet Explorer Enterprise Mode Activation in Progress...
@echo.
@echo off
REM if not exist SmartView.exe (
REM @echo on
REM @echo Installation failed. SmartView installation file NOT found.
REM pause
REM @echo off
REM goto end
REM )

ping -n 2 127.0.0.1 > NUL

@echo Import Registry Contents...
@echo.
reg import EMIE.reg 

ping -n 2 127.0.0.1 > NUL

@echo.
@echo Deploying Site List File...
@echo.
EMIE_Messenger.vbs

@echo Cleaning up Installation Temporary Files...
@echo.
Cleanup.vbs

@echo SUCCEED!!!
@echo.
@echo *******************************************
@echo.
REM pause 
REM :end
:del %0

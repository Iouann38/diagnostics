@echo off

:reload
cls

for /F "tokens=1 delims=, " %%i In ('powershell date') do set WD=%%i
echo Aujourd'hui, nous sommes %WD%

echo 旼컴컴컴컴컴컴컴컴컴컴컴커
echo � Batch Diagnostics      �
echo 쳐컴컴컴컴컴컴컴컴컴컴컴캑
echo � 1 - Creer repertoires  �
echo � 2 - Copier fichiers    �
echo � 3 - Compter fichiers   �
echo � 4 - Quitter            �
echo 읕컴컴컴컴컴컴컴컴컴컴컴켸

choice /c 1234 /t 10 /d 4

if errorlevel 4 (
pause
) else (
if errorlevel 3 (
call CompterFiles.bat
) else (
if errorlevel 2 (
call CopierFiles.bat
) else (
if errorlevel 1 call CreerDirectories.bat
)
)
goto reload
)

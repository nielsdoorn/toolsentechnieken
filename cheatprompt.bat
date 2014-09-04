@echo off
goto cheathome
:cheathome
cls
echo.
echo 			      ..::[ Cheatprompt ]::..
echo.
echo                                         OUD!
goto prompt
:prompt
set /p cheat=Cheat ^> 
if     "%cheat%"=="help" goto cheathelp
if     "%cheat%"=="firefox" goto firefox
if     "%cheat%"=="sluit" goto sluithelp
if     "%cheat%"=="sluit /?" goto sluithelp
if     "%cheat%"=="sluit /a" shutdown -a
if     "%cheat%"=="sluit /i" shutdown -i
if     "%cheat%"=="sluit /l" shutdown -l
if     "%cheat%"=="sluit /s" shutdown -s
if     "%cheat%"=="sluit /r" shutdown -r
if     "%cheat%"=="sluit /g" goto sluitg
if     "%cheat%"=="cls" goto cheathome
if     "%cheat%"=="terug" goto end

if NOT "%cheat%"=="help" if NOT "%cheat%"=="terug" if NOT "%cheat%"=="firefox" if NOT "%cheat%"=="cls" if NOT "%cheat%"=="sluit" if NOT "%cheat%"=="sluit /?" if NOT "%cheat%"=="sluit /a" if NOT "%cheat%"=="sluit /i" if NOT "%cheat%"=="sluit /l" if NOT "%cheat%"=="sluit /s" if NOT "%cheat%"=="sluit /r" if NOT "%cheat%"=="sluit /g" goto nee
goto prompt
:cheathelp
echo.
echo   Commando's       Beschrijving
echo   ---------------  -----------------------------------------------------
echo   firefox          Opent firefox
echo   sluit            Geeft helppagina voor sluiten weer
echo   cls              Maakt de prompt schoon
echo   help             Deze help pagina
echo   terug            Sluit cheatprompt
echo.
goto prompt

:firefox
set /p site=Website:  
start C:\Users\Gebruiker\firefox.lnk %site%
goto prompt
:nee
echo Deze command bestaat niet.
goto prompt


:sluithelp
echo.
echo    Gebruik: sluit ^<attribute^>
echo.
echo   attributes       Beschrijving
echo   ---------------  -----------------------------------------------------
echo   /a               Stop afsluiten
echo   /i               De grafische gebruikersinterface
echo   /l               afmelden
echo   /s               Computer afsluiten
echo   /r               Computer afsluiten en opnieuw opstarten
echo   /g               Geavanceerd stap voor stap
echo.
goto prompt


:sluitg
cls
echo.
echo   Wilt u de computer:
echo    1) Afsluiten
echo    2) Afsluiten met mededeling
echo    3) Aflsuiten met tijd
echo    4) Aflsuiten met mededeling en tijd
echo    5) Opnieuw opstarten
echo    6) Opnieuw opstarten met mededeling
echo    7) Opnieuw opstarten met tijd
echo    8) Opnieuw opstarten met mededeling en tijd
echo    9) Tog niet
set /p lvl=Uw keuze: 
cls
IF "%lvl%"=="1" shutdown -s
IF "%lvl%"=="2" goto am
IF "%lvl%"=="3" goto at
IF "%lvl%"=="4" goto amt
IF "%lvl%"=="5" shutdown -r
IF "%lvl%"=="6" goto om
IF "%lvl%"=="7" goto ot
IF "%lvl%"=="8" goto omt
IF "%lvl%"=="9" goto cheathome

:am
set /p m=Mededeling: 
shutdown /c "%m%" /s
goto cheathome

:at
set /p t=Tijd: 
shutdown /t %t% /s
goto cheathome

:amt
set /p m=Mededeling: 
set /p t=Tijd: 
shutdown /c "%m%" /t %t% /s
goto cheathome

:om
set /p m=Mededeling: 
shutdown /c "%m%" /r
goto cheathome

:ot
set /p t=Tijd: 
shutdown /t %t% /r
goto cheathome

:omt
set /p m=Mededeling: 
set /p t=Tijd: 
shutdown /c "%m%" /t %t% /r
goto cheathome



:end











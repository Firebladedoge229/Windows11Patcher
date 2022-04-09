@echo off

whoami /groups | findstr /b BUILTIN\Administrators | findstr /c:"Enabled group" && goto :clear

curl https://raw.githubusercontent.com/Firebladedoge229/gjdfsghiofhjsofghdshdhjfdewtrfdhdfsjfdgjfghdghjfgjkvgjfghjfghfghjjgfhjgfjytdf/main/ascii.txt 
echo Please run this program as Administrator.
pause
exit

:clear
cls
curl https://raw.githubusercontent.com/Firebladedoge229/gjdfsghiofhjsofghdshdhjfdewtrfdhdfsjfdgjfghdghjfgjkvgjfghjfghfghjjgfhjgfjytdf/main/ascii.txt 
goto :main

:main
setlocal
:PROMPT
SET /P AREYOUSURE=Do you want to patch the properties menu? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKCU\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /ve /t REG_SZ /d "" /f
goto :a
@echo

:END
goto :a

:a
SET /P AREYOUSURE=Do you want to patch the explorer view? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "UseCompactMode" /t REG_DWORD /d 00000001 /f
goto :b


:END
goto :b

:b
SET /P AREYOUSURE=Do you want to patch the explorer ribbon bar? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{e2bf9676-5f8f-435c-97eb-11607a5bedf7}" /t REG_SZ /d "" /f
goto :c


:END
goto :c

:c
SET /P AREYOUSURE=Do you want to patch the taskbar? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell\Update\Packages" /v "UndockingDisabled" /t REG_DWORD /d 00000001 /f
goto :d


:END
goto :d

:d
SET /P AREYOUSURE=Do you want to disable the search box? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 00000000 /f
goto :e


:END
goto :e

:e
SET /P AREYOUSURE=Do you want to disable task grouping? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoTaskGrouping" /t REG_DWORD /d 00000001 /f
goto :f

:END
goto :f
s
:f
SET /P AREYOUSURE=Do you want to enable small taskbar icons? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /t REG_DWORD /d 00000001 /f
goto :g

:END
goto :g

:g
SET /P AREYOUSURE=Do you want to restart to apply changes? [Y/N]
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

shutdown /r /f -t 0 

:END
echo Successfully made changes!
pause
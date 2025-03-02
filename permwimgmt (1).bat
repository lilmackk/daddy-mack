@echo off
Setlocal EnableDelayedExpansion

@echo off
:: BatchGotAdmin
:-------------------------------------

REM --> Check for permissions
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)
 

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params= %*
echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:gotAdmin
@echo ----------------------------------------------------------------------------------------------------------------
@echo ----------------------------------------------------------------------------------------------------------------
cd C:\Windows\INF
@echo ----------------------------------------------------------------------------------------------------------------
@echo ----------------------------------------------------------------------------------------------------------------

@echo Press any key to change all your HWIDs: 
TASKKILL /F /IM WmiPrvSE.exe
cd C:\Windows\INF
AMIDEWINx64.EXE /SU AUTO 
AMIDEWINx64.EXE /BS A-%Random%%Random%%Random%
AMIDEWINx64.EXE /CS A-%Random%%Random%%Random%
AMIDEWINx64.EXE /SS A-%Random%%Random%%Random%
AMIDEWINx64.exe /IV A-%Random%%Random%%Random%

AMIDEWINx64.exe /SV A-%Random%%Random%%Random%
AMIDEWINx64.exe /SS A-%Random%%Random%%Random%
AMIDEWINx64.exe /SU A-%Random%%Random%%Random%
AMIDEWINx64.exe /SK A-%Random%%Random%%Random%
AMIDEWINx64.exe /SF A-%Random%%Random%%Random%

AMIDEWINx64.exe /BS A-%Random%%Random%%Random%
AMIDEWINx64.exe /BT A-%Random%%Random%%Random%
AMIDEWINx64.exe /CM A-%Random%%Random%%Random%
AMIDEWINx64.exe /CT A-%Random%%Random%%Random%
AMIDEWINx64.exe /CV A-%Random%%Random%%Random%
AMIDEWINx64.exe /CS A-%Random%%Random%%Random%
AMIDEWINx64.exe /CA A-%Random%%Random%%Random%
AMIDEWINx64.exe /CO A-%Random%%Random%%Random%
AMIDEWINx64.exe /IVN A-%Random%%Random%%Random%

AMIDEWINx64.exe /PSN A-%Random%%Random%%Random%
AMIDEWINx64.exe /PPN A-%Random%%Random%%Random%

@echo ALL HWID IDs Have Been Changed Wait to be saved
cd C:\Windows\INF
net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
sc start winmgmt
@echo saved

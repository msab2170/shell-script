@echo off

set BackupDirectory=C:\backupFolder
set BackupFile=%BackupDirectory%\backupregistrylist.reg
set RegistryPath=HKEY_CURRENT_USER\할튼\백업할레지스트리경로       

reg query "%RegistryPath%" >nul 2>&1
if %errorlevel% equ 0 (
    echo "%RegistryPath%" exists.
    rem 
        if not exist "%BackupDirectory%" (
            mkdir "%BackupDirectory%"
            echo %BackupDirectory% not exist. make directory.
        )
        reg export "%RegistryPath%" "%BackupFile%" /y
        echo registry backup success.

        reg delete "%RegistryPath%" /f
        echo %RegistryPath% is deleted.
) else (
    echo %RegistryPath% not exists.
)

pause

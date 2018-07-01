@ECHO OFF
cls
echo ####################################
echo ##    Onedrive remover      ##
echo ##		onedrive.bat         ##
echo ####################################
echo Supported on Windows 8.1+
::TODO - edit registry
::TODO - restore registry
::TODO - install_onedrive
::TODO - merge permissions with main block, to maintain variables

::COMPLETE:
::		-
::		-
::		-
::		-




::checks and prompts the user if they are running the script in ADMIN or not. 
GOTO check_Permissions
pause
	::if the user passes as an admin, we continue here.
	echo Are you sure you want to remove OneDrive completely? 
	echo To reinstall, enter R below.
	SET "/P answer=Yes(Y), No(N), Reinstall(R):"
	
	IF answer==Y OR answer==y(
	GOTO remove_OneDrive
	GOTO edit_Registry
	
	) ELSE IF answer==N OR answer==n(
	ECHO Exiting in 5..
	timeout /t 5 
	)
	
	ELSE IF answer==R OR answer==r(
	::[re]install it, and restore the registry keys!
	GOTO install_OneDrive
	GOTO restore_Registry
	
	
	
::TODO	
:check_Permissions
	::checks to make sure the user is running the script in admin
    echo The removal process and the editing of registry keys requires Admin approval.
	timeout /t 1
    net session | if ERRORLEVEL == 5 (
        echo Relaunch in admin?
		SET /p "ans=Y/N:" 
		IF ans==Y OR ans==y (
		.\*onedrive.bat
		) ELSE (
		echo Exiting in 5 seconds..
		timeout /t 5 
		exit
		)
    )

:menu
:: TODO: CREATE OWN MENU

:: c:
:: cd \
:: go-menu user.mnu
:: if errorlevel 11 goto exit
:: if errorlevel 10 goto boot1
:: if errorlevel 9 goto pic
:: if errorlevel 8 goto tape
:: if errorlevel 7 goto scanners
:: if errorlevel 6 goto editfiles
:: if errorlevel 5 goto sysinfo
:: if errorlevel 4 goto house
:: if errorlevel 3 goto setevars
:: if errorlevel 2 goto prompt
:: if errorlevel 1 goto windows
:: goto menu
	
:remove_OneDrive
	cd %SYSTEMROOT%
	::FOR 64 BIT
	IF EXISTS %SYSTEMROOT%\SysWOW64\OneDriveSetup.exe (
	::let's do some removing! 
	%SYSTEMROOT%\SysWOW64\OneDriveSetup.exe /uninstall		
	GOTO edit_Registry
	
	) 
	
	ELSE IF EXISTS %SYSTEMROOT%\System32\OneDriveSetup.exe (
	%SYSTEMROOT%\System32\OneDriveSetup.exe /uninstall 
	GOTO edit_Registry
	
	)
	
:edit_Registry
::changes the registry so OneDrive doesn't show in FileExplorer.
	
:restore_Registry
::restore	
	
:install_OneDrive
	echo Installing OneDrive, continue? 
	::prompt, then install


	


	

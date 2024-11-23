    @echo off
    :: Clear the screen and set initial color
    cls
    color 4

    :menu
    :: Display the Header
    cls
    @echo off
    echo.                                                                                     
    echo.                                                                                     
    echo.                                                                                 
    echo.                                    uu$$$$$$$$$$$uu                                  
    echo.                                 uu$$$$$$$$$$$$$$$$$uu                             
    echo.                                u$$$$$$$$$$$$$$$$$$$$$u                            
    echo.                               u$$$$$$$$$$$$$$$$$$$$$$$u                           
    echo.                              u$$$$$$$$$$$$$$$$$$$$$$$$$u                          
    echo.                              u$$$$$$$$$$$$$$$$$$$$$$$$$u                          
    echo.                              u$$$$$$"   "$$$"   "$$$$$$u                         
    echo.                              "$$$$"      u$u       $$$$"                          
    echo.                               $$$u       u$u       u$$$                          
    echo.                               $$$u      u$$$u      u$$$                          
    echo.                                "$$$$uu$$$   $$$uu$$$$"                          
    echo.                                 "$$$$$$$"   "$$$$$$$"                          
    echo.                                   u$$$$$$$u$$$$$$$u                                
    echo.                                    u$"$"$"$"$"$"$u                               
    echo.                                   $$u$ $ $ $ $u$$                            
    echo.                                     $$$$$u$u$u$$$                          
    echo.                                     "$$$$$$$$$"                        
    echo.                                          
    echo.
    echo.                PC HEALTH MANAGER / PC STABILITY CHECKER
    echo.                BY @dopaminessprime                                       


    :: Add a blank line for better readability
    echo.

    :: Display the Menu (Centering the Menu Text)
    echo.                                   List of Commands:
    echo.                                   0 - Scan PCs Health
    echo.                                   1 - Check Corrupted Files
    echo.                                   2 - Kill a PC Task
    echo.                                   3 - Check PC Tasks
    echo.                                   4 - Check Windows Version
    echo.                                   5 - Run CHKDSK
                                                                                            echo.                                   6 - Display System Info
                                                                                            echo.                                   7 - Clear Temp Files
                                                                                            echo.                                   8 - Check Disk Space
                                                                                            echo.                                   9 - Shutdown PC   
                                                                                            echo.                                   10 - Settings
                                                                                            echo.                                   11 - Exit
    echo.

    :: Ask the user for input
    set /p choice=Enter your visual choice. (0-11): 

    :: Process the user's choice
    if "%choice%"=="0" (
        echo Scanning health...
        dism /online /cleanup-image /restorehealth
        pause
        goto menu
    )

    if "%choice%"=="1" (
        echo Checking for corrupted files...
        sfc /scannow
        pause
        goto menu
    )

    if "%choice%"=="2" (
        echo Enter the name of the task to kill:
        set /p taskname=Task Name: 
        taskkill /im %taskname% /f
        pause
        goto menu
    )

    if "%choice%"=="3" (
        echo Displaying current tasks...
        tasklist
        pause
        goto menu
    )

    if "%choice%"=="4" (
        echo Checking Windows version...
        ver
        pause
        goto menu
    )

    if "%choice%"=="5" (
        echo Running CHKDSK...
        chkdsk
        pause
        goto menu
    )

    if "%choice%"=="6" (
        echo Displaying system information...
        systeminfo
        pause
        goto menu
    )

    if "%choice%"=="7" (
        echo Clearing temporary files...
        del /q /f /s %temp%\*
        pause
        goto menu
    )

    if "%choice%"=="8" (
        echo Checking disk space...
        wmic logicaldisk get size,freespace,caption
        pause
        goto menu
    )

    if "%choice%"=="9" (
        echo Shutting down the PC...
        shutdown /s /f /t 0
        pause
        goto menu
    )

    if "%choice%"=="10" (
        goto settings
    )
    :: Add this to your menu where you want to track the IP

    if "%choice%"=="11" (
        echo Exiting PC Manager. Goodbye!
        pause
        exit
    )

    :: Invalid choice handler
    echo Invalid option selected. Please try again.
    pause
    goto menu

    :: Settings Page
    :settings
    cls
    echo.                                                                                     
    echo.                                   Settings                                    
    echo.                                                                                     
    echo.                                   1 - Change Color Scheme                       
    echo.                                   2 - Change Font Size                          
    echo.                                   3 - Back to Main Menu                          
    echo.                                                                                     
    set /p choice=Enter your choice (1-3): 

    if "%choice%"=="1" (
        echo Changing color scheme...
        :: Example of changing color scheme
        color 2
        pause
        goto settings
    )

    if "%choice%"=="2" (
        echo Font size cannot be changed directly in batch, but this can be done through CMD properties.
        pause
        goto settings
    )

    if "%choice%"=="3" goto menu



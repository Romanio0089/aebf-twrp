@echo off
CLS & TITLE aebf - Android Encryption Bruteforcer for TWRP

:MENU
CLS
SET /a number=0
ECHO aebf v1.0 - Android Encryption Bruteforcer for TWRP
ECHO Copyright (c) 2023, Romanio0089
ECHO.
ECHO Select PIN length
ECHO 1. 4 digits
ECHO 2. 5 digits
ECHO 3. 6 digits
ECHO 4. 7 digits
ECHO 5. 8 digits
ECHO.
ECHO 6. Exit
ECHO.
SET "M="
SET /P M=Type 1, 2, 3, 4, 5, or 6 and press ENTER: 
IF "%M%"=="1" GOTO BRUTEFORCE4
IF "%M%"=="2" GOTO BRUTEFORCE5
IF "%M%"=="3" GOTO BRUTEFORCE6
IF "%M%"=="4" GOTO BRUTEFORCE7
IF "%M%"=="5" GOTO BRUTEFORCE8
IF "%M%"=="6" EXIT /B
ELSE
GOTO MENU

adb shell ^

:BRUTEFORCE4
CLS
adb devices
ECHO.
ECHO Please check if the device is connected.
ECHO If the list is empty, the device is not connected, or ADB drivers are not installed properly.
ECHO See GitHub page for tips if device isn't detected.
ECHO.
ECHO Tip:
ECHO Keep TWRP device screen on for faster speed.
ECHO.
PAUSE

SET /a number+=1

CLS
ECHO Password 0001 test

adb shell twrp decrypt 0001 | FIND "Data successfully decrypted"
IF %errorlevel%==0 ECHO. & ECHO aebf has successfully found "0001" as your password! & ECHO. & PAUSE & GOTO MENU
GOTO BRUTEFORCE4S

:BRUTEFORCE4S
IF %number%==10000 GOTO ENDF

SET /a number+=1
IF %number% LSS 10 (
    SET "formattedNumber=000%number%"
) ELSE IF %number% LSS 100 (
    SET "formattedNumber=00%number%"
) ELSE IF %number% LSS 1000 (
    SET "formattedNumber=0%number%"
) ELSE (
    SET "formattedNumber=%number%"
)

ECHO Failed.
ECHO.
ECHO Password %formattedNumber% test

adb shell twrp decrypt %formattedNumber% | FIND "Data successfully decrypted"
IF %errorlevel%==0 GOTO END
GOTO BRUTEFORCE4S

:BRUTEFORCE5
CLS
adb devices
ECHO.
ECHO Please check if the device is connected.
ECHO If the list is empty, the device is not connected, or ADB drivers are not installed properly.
ECHO See GitHub page for tips if device isn't detected.
ECHO.
ECHO Tip:
ECHO Keep TWRP device screen on for faster speed.
ECHO.
PAUSE

SET /a number+=1

CLS
ECHO Password 00001 test

adb shell twrp decrypt 00001 | FIND "Data successfully decrypted"
IF %errorlevel%==0 ECHO. & ECHO aebf has successfully found "00001" as your password! & ECHO. & PAUSE & GOTO MENU
GOTO BRUTEFORCE5S

:BRUTEFORCE5S
IF %number%==100000 GOTO ENDF

SET /a number+=1
IF %number% LSS 10 (
    SET "formattedNumber=0000%number%"
) ELSE IF %number% LSS 100 (
    SET "formattedNumber=000%number%"
) ELSE IF %number% LSS 1000 (
    SET "formattedNumber=00%number%"
) ELSE IF %number% LSS 10000 (
    SET "formattedNumber=0%number%"
) ELSE (
    SET "formattedNumber=%number%"
)

ECHO Failed.
ECHO.
ECHO Password %formattedNumber% test

adb shell twrp decrypt %formattedNumber% | FIND "Data successfully decrypted"
IF %errorlevel%==0 GOTO END
GOTO BRUTEFORCE5S

:BRUTEFORCE6
CLS
adb devices
ECHO.
ECHO Please check if the device is connected.
ECHO If the list is empty, the device is not connected, or ADB drivers are not installed properly.
ECHO See GitHub page for tips if device isn't detected.
ECHO.
ECHO Tip:
ECHO Keep TWRP device screen on for faster speed.
ECHO.
PAUSE

SET /a number+=1

CLS
ECHO Password 000001 test

adb shell twrp decrypt 000001 | FIND "Data successfully decrypted"
IF %errorlevel%==0 ECHO. & ECHO aebf has successfully found "000001" as your password! & ECHO. & PAUSE & GOTO MENU
GOTO BRUTEFORCE6S

:BRUTEFORCE6S
IF %number%==1000000 GOTO ENDF

SET /a number+=1
IF %number% LSS 10 (
    SET "formattedNumber=00000%number%"
) ELSE IF %number% LSS 100 (
    SET "formattedNumber=0000%number%"
) ELSE IF %number% LSS 1000 (
    SET "formattedNumber=000%number%"
) ELSE IF %number% LSS 10000 (
    SET "formattedNumber=00%number%"
) ELSE IF %number% LSS 100000 (
    SET "formattedNumber=0%number%"
) ELSE (
    SET "formattedNumber=%number%"
)

ECHO Failed.
ECHO.
ECHO Password %formattedNumber% test

adb shell twrp decrypt %formattedNumber% | FIND "Data successfully decrypted"
IF %errorlevel%==0 GOTO END
GOTO BRUTEFORCE6S

:BRUTEFORCE7
CLS
adb devices
ECHO.
ECHO Please check if the device is connected.
ECHO If the list is empty, the device is not connected, or ADB drivers are not installed properly.
ECHO See GitHub page for tips if device isn't detected.
ECHO.
ECHO Tip:
ECHO Keep TWRP device screen on for faster speed.
ECHO.
PAUSE

SET /a number+=1

CLS
ECHO Password 0000001 test

adb shell twrp decrypt 0000001 | FIND "Data successfully decrypted"
IF %errorlevel%==0 ECHO. & ECHO aebf has successfully found "0000001" as your password! & ECHO. & PAUSE & GOTO MENU
GOTO BRUTEFORCE7S

:BRUTEFORCE7S
IF %number%==10000000 GOTO ENDF

SET /a number+=1
IF %number% LSS 10 (
    SET "formattedNumber=000000%number%"
) ELSE IF %number% LSS 100 (
    SET "formattedNumber=00000%number%"
) ELSE IF %number% LSS 1000 (
    SET "formattedNumber=0000%number%"
) ELSE IF %number% LSS 10000 (
    SET "formattedNumber=000%number%"
) ELSE IF %number% LSS 100000 (
    SET "formattedNumber=00%number%"
) ELSE IF %number% LSS 1000000 (
    SET "formattedNumber=0%number%"
) ELSE (
    SET "formattedNumber=%number%"
)

ECHO Failed.
ECHO.
ECHO Password %formattedNumber% test

adb shell twrp decrypt %formattedNumber% | FIND "Data successfully decrypted"
IF %errorlevel%==0 GOTO END
GOTO BRUTEFORCE7S

:BRUTEFORCE8
CLS
adb devices
ECHO.
ECHO Please check if the device is connected.
ECHO If the list is empty, the device is not connected, or ADB drivers are not installed properly.
ECHO See GitHub page for tips if device isn't detected.
ECHO.
ECHO Tip:
ECHO Keep TWRP device screen on for faster speed.
ECHO.
PAUSE

SET /a number+=1

CLS
ECHO Password 00000001 test

adb shell twrp decrypt 00000001 | FIND "Data successfully decrypted"
IF %errorlevel%==0 ECHO. & ECHO aebf has successfully found "00000001" as your password! & ECHO. & PAUSE & GOTO MENU
GOTO BRUTEFORCE8S

:BRUTEFORCE8S
IF %number%==100000000 GOTO ENDF

SET /a number+=1
IF %number% LSS 10 (
    SET "formattedNumber=0000000%number%"
) ELSE IF %number% LSS 100 (
    SET "formattedNumber=000000%number%"
) ELSE IF %number% LSS 1000 (
    SET "formattedNumber=00000%number%"
) ELSE IF %number% LSS 10000 (
    SET "formattedNumber=0000%number%"
) ELSE IF %number% LSS 100000 (
    SET "formattedNumber=000%number%"
) ELSE IF %number% LSS 1000000 (
    SET "formattedNumber=00%number%"
) ELSE IF %number% LSS 10000000 (
    SET "formattedNumber=0%number%"
) ELSE (
    SET "formattedNumber=%number%"
)

ECHO Failed.
ECHO.
ECHO Password %formattedNumber% test

adb shell twrp decrypt %formattedNumber% | FIND "Data successfully decrypted"
IF %errorlevel%==0 GOTO END
GOTO BRUTEFORCE8S

:END
ECHO.
ECHO aebf has successfully found "%formattedNumber%" as your password!
ECHO.
PAUSE
GOTO MENU

:ENDF
ECHO.
ECHO aebf has not found your password. Please try with more digits.
ECHO.
PAUSE
GOTO MENU
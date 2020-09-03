@Echo Off
TITLE  IP

:start
cls
color 1f
mode con cols=56 lines=20
:main
echo -------------------------------------------
echo 1.LG
echo 2.Hotel
echo 3.Quit
set "select="
set /p select=  Input num¡Apress Enter :
if "%select%"=="1" (goto ip1) 
if "%select%"=="2" (goto ip2) 
if "%select%"=="3" (goto exit)

:exit
exit
goto :eof

:ip1
cls
echo Changing IP:LG
Netsh interface IP Set Address "Wi-Fi" Static 10.208.165.192 255.255.255.128 10.208.165.129 1 
netsh interface ip set dns "Wi-Fi" static 156.147.165.65
echo Done! LG 10.208.165.192
PAUSE >nul
Goto exit

:ip2
cls
echo Changing IP:Hotel
netsh interface IP Set Address "Wi-Fi" dhcp
netsh interface ip set dns "Wi-Fi" dhcp
echo Done! Hotel DHCP
PAUSE >nul
Goto exit
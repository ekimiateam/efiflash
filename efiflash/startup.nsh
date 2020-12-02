echo "********************************************************************"
echo "*** Ekimia StartUp.nsh v1.0       Auto Start Bios & EC flash     ***"
echo "********************************************************************"
map

echo "trying fs0:"
fs0:
dir
cd \efiflash\
dir
if exist menu.nsh then
goto SUITESCRIPT
endif

echo "Problem finding script on fs0 "
goto END


:SUITESCRIPT
menu.nsh
:END

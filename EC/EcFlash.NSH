@echo -off

set EC_ROM L140CU.08

set FLASH_TOOL uEcFlash64_190111.efi

if '%1' == '' then
 goto flash
endif
if '%2' == '' then
 goto DefaultParameter
endif

set EC_ROM %1
%FLASH_TOOL% %EC_ROM% %2 %3 %4 %5 %6 %7
goto end

:DefaultParameter
set EC_ROM %1

:flash
# Check the file exist or not.
if not exist %EC_ROM% then
 echo The \%EC_ROM% doesn't exist.
 goto end
endif

# update EC
%FLASH_TOOL% %EC_ROM% /ad /h3 /f2 /v

:end
@echo -on


REM Just another shitty smbios restoration script written by Reported.lol
REM Thanks to all perm spoofers for giving us hours upon hours of work.
@echo off
setlocal EnableDelayedExpansion

REM Function to generate a random 5-digit number
set RAND_NUM=
for /L %%n in (1,1,5) do (
    set /A RAND=!RANDOM! %% 10
    set RAND_NUM=!RAND_NUM!!RAND!
)

REM Set BIOS Release Date
AMIDEWINx64 /ID "09/21/2023"

REM Set BIOS Vendor
AMIDEWINx64 /IVN "American Megatrends Inc."

REM Set BIOS Version
AMIDEWINx64 /IV "2001"

REM Set System Family
AMIDEWINx64 /SF "To be filled by O.E.M."

REM Set Product Name
AMIDEWINx64 /SP "System Product Name"

REM Set SKU Number
AMIDEWINx64 /SK "SKU"

REM Set System Serial Number
AMIDEWINx64 /SS "System Serial Number"

REM Set System Manufacturer
AMIDEWINx64 /SM "ASUS"

REM Set System Version
AMIDEWINx64 /SV "System Version"

REM Set Baseboard Asset Tag
AMIDEWINx64 /BT "Default string"

REM Set Baseboard Manufacturer
AMIDEWINx64 /BM "ASUSTeK COMPUTER INC."

REM Set Location in Chassis
AMIDEWINx64 /BLC "Default string"

REM Set Baseboard Product Name
AMIDEWINx64 /BP "ROG STRIX Z590-F GAMING WIFI"

REM Set Baseboard Serial Number with randomized last 5 digits
set BASE_SERIAL="21038307950!RAND_NUM!"
AMIDEWINx64 /BS %BASE_SERIAL%

REM Set Baseboard Version
AMIDEWINx64 /BV "Rev 1.xx"

REM Set Chassis Asset Tag
AMIDEWINx64 /CA "Default string"

REM Set Chassis Manufacturer
AMIDEWINx64 /CM "Default string"

REM Set Chassis Serial Number
AMIDEWINx64 /CS "Default string"

REM Set Chassis Version
AMIDEWINx64 /CV "Default string"

REM Set Processor Asset Tag
AMIDEWINx64 /PAT "To Be Filled By O.E.M."

REM Set Processor Part Number
AMIDEWINx64 /PPN "To Be Filled By O.E.M."

REM Set Processor Serial Number
AMIDEWINx64 /PSN "To Be Filled By O.E.M."

echo DMI update completed.
pause

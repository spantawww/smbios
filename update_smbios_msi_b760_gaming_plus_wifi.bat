REM Just another shitty smbios restoration script written by Reported.lol
REM Thanks to all perm spoofers for giving us hours upon hours of work.

@echo off
setlocal EnableDelayedExpansion

REM Function to generate a random 8-digit number (for the serial number modification)
set RAND_NUM=
for /L %%n in (1,1,8) do (
    set /A RAND=!RANDOM! %% 10
    set RAND_NUM=!RAND_NUM!!RAND!
)

REM Change BIOS Release Date
AMIDEWINx64 /ID "08/11/2023"

REM Change BIOS Vendor
AMIDEWINx64 /IVN "American Megatrends International, LLC."

REM Change BIOS Version
AMIDEWINx64 /IV "1.70"

REM Change System Family
AMIDEWINx64 /SF "To be filled by O.E.M."

REM Change Product Name
AMIDEWINx64 /SP "MS-7D98"

REM Change SKU Number
AMIDEWINx64 /SK "To be filled by O.E.M."

REM Change System Serial Number
AMIDEWINx64 /SS "To be filled by O.E.M."

REM Change System Manufacturer
AMIDEWINx64 /SM "Micro-Star International Co., Ltd."

REM Change System Version
AMIDEWINx64 /SV "1.0"

REM Auto-generate System UUID
AMIDEWINx64 /SU AUTO

REM Change Baseboard Asset Tag
AMIDEWINx64 /BT "To be filled by O.E.M."

REM Change Baseboard Manufacturer
AMIDEWINx64 /BM "Micro-Star International Co., Ltd."

REM Change Location in Chassis
AMIDEWINx64 /BLC "To be filled by O.E.M."

REM Change Baseboard Product Name
AMIDEWINx64 /BP "B760 GAMING PLUS WIFI (MS-7D98)"

REM Change Baseboard Serial Number with randomized last 8 digits
set BASE_SERIAL="07E1011_NA!RAND_NUM!"
AMIDEWINx64 /BS %BASE_SERIAL%

REM Change Baseboard Version
AMIDEWINx64 /BV "1.0"

REM Change Chassis Asset Tag
AMIDEWINx64 /CA "To be filled by O.E.M."

REM Change Chassis Manufacturer
AMIDEWINx64 /CM "Micro-Star International Co., Ltd."

REM Change Chassis Serial Number
AMIDEWINx64 /CS "To be filled by O.E.M."

REM Change Chassis Version
AMIDEWINx64 /CV "1.0"

REM Change Processor Asset Tag
AMIDEWINx64 /PAT "Unknown"

REM Change Processor Part Number
AMIDEWINx64 /PPN "Unknown"

REM Change Processor Serial Number
AMIDEWINx64 /PSN "Unknown"

REM Change all System Enclosure (Type 3) fields to "Default string"
AMIDEWINx64 /CM "Default string"
AMIDEWINx64 /CV "Default string"
AMIDEWINx64 /CS "Default string"
AMIDEWINx64 /CA "Default string"
AMIDEWINx64 /CSK "Default string"

echo DMI update completed.
pause

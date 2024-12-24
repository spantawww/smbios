REM Just another shitty smbios restoration script written by Reported.lol
REM Thanks to all perm spoofers for giving us hours upon hours of work.

@echo off
setlocal EnableDelayedExpansion

REM Function to generate a random 5-character alphanumeric string
set RAND_STR=
for /L %%n in (1,1,5) do (
    set /A RAND=!RANDOM! %% 36
    if !RAND! LSS 10 (
        set CHAR=!RAND!
    ) else (
        set /A CHAR=!RAND! + 55
        for %%A in (!CHAR!) do set CHAR=%%A
    )
    set RAND_STR=!RAND_STR!!CHAR!
)

REM Change BIOS Release Date
AMIDEWINx64 /ID "04/07/2023"

REM Change BIOS Vendor
AMIDEWINx64 /IVN "American Megatrends International, LLC."

REM Change BIOS Version
AMIDEWINx64 /IV "2.10"

REM Change System Family
AMIDEWINx64 /SF "To be filled by O.E.M."

REM Change Product Name
AMIDEWINx64 /SP "System Product Name"

REM Change SKU Number
AMIDEWINx64 /SK "SKU"

REM Change System Serial Number
AMIDEWINx64 /SS "To be filled by O.E.M."

REM Change System Manufacturer
AMIDEWINx64 /SM "System manufacturer"

REM Change System Version
AMIDEWINx64 /SV "System Version"

REM Auto-generate System UUID
AMIDEWINx64 /SU AUTO

REM Change Baseboard Asset Tag
AMIDEWINx64 /BT "Default string"

REM Change Baseboard Manufacturer
AMIDEWINx64 /BM "ASRock Inc."

REM Change Location in Chassis
AMIDEWINx64 /BLC "Default string"

REM Change Baseboard Product Name
AMIDEWINx64 /BP "Z590 Steel Legend"

REM Change Baseboard Serial Number with randomized last 5 characters
set BASE_SERIAL="M80-808183!RAND_STR!"
AMIDEWINx64 /BS %BASE_SERIAL%

REM Change Baseboard Version
AMIDEWINx64 /BV "Rev 1.x"

REM Change Chassis Asset Tag
AMIDEWINx64 /CA "Default string"

REM Change Chassis Manufacturer
AMIDEWINx64 /CM "Default string"

REM Change Chassis Serial Number
AMIDEWINx64 /CS "Default string"

REM Change Chassis Version
AMIDEWINx64 /CV "Default string"

REM Change Processor Asset Tag
AMIDEWINx64 /PAT "Default string"

REM Change Processor Part Number
AMIDEWINx64 /PPN "Default string"

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

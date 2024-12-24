REM Just another shitty smbios restoration script written by Reported.lol
REM Thanks to all perm spoofers for giving us hours upon hours of work.

@echo off
setlocal EnableDelayedExpansion

REM Change BIOS Release Date
AMIDEWINx64 /ID "03/22/2024"

REM Change BIOS Vendor
AMIDEWINx64 /IVN "American Megatrends International, LLC."

REM Change BIOS Version
AMIDEWINx64 /IV "FF"

REM Change System Family
AMIDEWINx64 /SF "B550 MB"

REM Change Product Name
AMIDEWINx64 /SP "B550 AORUS ELITE V2"

REM Change SKU Number
AMIDEWINx64 /SK "Default string"

REM Change System Serial Number
AMIDEWINx64 /SS "Default string"

REM Change System Manufacturer
AMIDEWINx64 /SM "Gigabyte Technology Co., Ltd."

REM Change System Version
AMIDEWINx64 /SV "Default string"

REM Auto-generate System UUID
AMIDEWINx64 /SU AUTO

REM Change Baseboard Asset Tag
AMIDEWINx64 /BT "Default string"

REM Change Baseboard Manufacturer
AMIDEWINx64 /BM "Gigabyte Technology Co., Ltd."

REM Change Location in Chassis
AMIDEWINx64 /BLC "Default string"

REM Change Baseboard Product Name
AMIDEWINx64 /BP "B550 AORUS ELITE V2"

REM Change Baseboard Serial Number
AMIDEWINx64 /BS "Default string"

REM Change Baseboard Version
AMIDEWINx64 /BV "x.x"

REM Change Chassis Asset Tag
AMIDEWINx64 /CA "Default string"

REM Change Chassis Manufacturer
AMIDEWINx64 /CM "Default string"

REM Change Chassis Serial Number
AMIDEWINx64 /CS "Default string"

REM Change Chassis Version
AMIDEWINx64 /CV "Default string"

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

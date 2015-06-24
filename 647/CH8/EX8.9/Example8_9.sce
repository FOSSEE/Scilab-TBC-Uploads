clear;
clc;

// Example: 8.9
// Page: 308

printf("Example: 8.9 - Page: 308\n\n");

// Solution

//*****Data******//
Th = 273 + 125;// [K]
Tl = 273 - 5;// [K]
Ts = 273 + 28;// [K]
COP = 2;
//*************//

COP_absorption = (Tl/(Ts - Tl))*((Th - Ts)/Th);
if (COP - 0.1) < COP_absorption | (COP + 0.1) > COP_absorption
    printf("Claim is Valid and reasonable");
else
    printf("Claim is not Valid");
end
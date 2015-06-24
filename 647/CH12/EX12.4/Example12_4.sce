clear;
clc;

// Example: 12.4
// Page: 479

printf("Example: 12.4 - Page: 479\n\n");

// Solution

//*****Data******//
// H2O(l) = H2O(g)
deltaH = 9710;// [cal]
deltaS = 26;// [e.u.]
Temp = 27 + 273;// [K]
P = 1;// [atm]
//**************//

deltaG = deltaH - Temp*deltaS;// [cal]
if deltaG > 0
    printf("Vaporisation of liquid water is not spontaneous\n");
else
    printf("Vaporisation of liquid water is spontaneous")
end
// Scilab code Exa1.14 :  : P.no. 56(2011)
clc; clear;
A = 50;                 // Mass number
M_Sc = 49.951730;        // Mass of scandium, atomic mass unit
M_Ti = 49.944786;         // Mass of titanium, atomic mass unit
M_V = 49.947167;         // Mass of vanadium, atomic mass unit
M_Cr = 49.946055;         // Mass of chromium, atomic mass unit
M_Mn = 49.954215;         // Mass of manganese, atomic mass unit
a_p = (M_Mn-M_Cr+M_V-M_Ti)/(8*A^(-3/4))*931.5;    // Pairing energy temr, mega electron volts
printf("\nPairing energy term : %5.2f MeV", a_p);

// Result
// Pairing energy term : 23.08 MeV 

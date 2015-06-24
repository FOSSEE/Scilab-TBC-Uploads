// Example 2.11
clear all;
clc;

// Given data
T_C = 38;                           // Given temeperature in celsius
//The temperature in Kelvin 
T_K = T_C+273.15;
T_0 = 293.61;                       // The temperature in kelvin equivalent to 0 deg celsius
kT = 0.0253;                        // The term 'kT' in eV at temperature T0
// Calculation
Ep = 0.5*kT*(T_K/T_0);
Ebar = 3*Ep;
// Result
printf(" Most probable energy of air molecules = %5.5f eV \n",Ep);
printf(" Average energy of air molecules = %5.5f eV \n",Ebar);



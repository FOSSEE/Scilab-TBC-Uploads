clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.17
// Page 389
printf("Example 6.17, Page 389 \n \n");

// solution

// basis 1 kg dry air fed to tower
// from fig 6.16 we get
// at WB=330 K and DB=393 K
H1 = .0972 // kg/kg dry air
DP = 325.15 //K
// at 313 K
H2 = .0492 // kg/kg dry air
H = H1-H2 // moisture condensed in tower
Ch1 = 1.006 + 1.84*H1 // kJ/kg dry air
Ch2 = 1.006 + 1.84*H2
ia1 = 1.006*(325-273) + H1*2596 + 1.185*(393-325) // enthalpy of entering air
ia2 = 1.006*(313-273) + H2*2574.4 // enthalpy of outgoing air
i = ia1-ia2
qm = 2000/(1+H1)
fi1 = qm*i // heat loss rate
fi2 = 1.167*3600*4.1868*(323-305) // heat gained by water
r = fi2*100/fi1
printf("(a) \n \n The heat loss rate rate from the hot air in the bed = "+string(fi1)+" kW \n \n \n(b) \n \n The percentage heat recovery in hot water = "+string(r)+" percent.")

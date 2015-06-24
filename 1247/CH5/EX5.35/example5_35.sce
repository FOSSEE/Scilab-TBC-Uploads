clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.35
// Page 273
printf("Example 5.35, Page 273 \n \n");

// solution

T2 = 800
T1 = 298.15
fi1 = 3614.577*(T2-T1)+305.561*10^-3*(T2^2-T2^2)/2+836.881*10^-6*(T2^3-T1^3)/3-393.707*10^-9*(T2^4-T1^4)/4  // kW
T3 = 875
fi2 = 3480.737*(T3-T1)+754.347*10^-3*(T3^2-T2^2)/2+442.159*10^-6*(T3^3-T1^3)/3-278.735*10^-9*(T3^4-T1^4)/4  // kW
Hr = -98910  // kJ/kmol SO2 reacted     by eg 5.33
fi3 = (8.8511-.351)*Hr/3600  // kW
dH = fi2/3600+fi3-fi1/3600
printf(" Net enthalpy change = "+string(dH)+" kW.")

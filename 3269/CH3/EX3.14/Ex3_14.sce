// Example 3.14
clear all;
clc;

// Fission of 1 g of Uranium-235 releases approximately 1 MW/day of energy. 
// 1 MW/day = 8.64*10^(10) J
energy_uranium = 8.64*10^10;

// 1. Coal
h_coal = 3*10^7;      // Heat contenet of coal in J/kg
// Calculation
amt_coal = energy_uranium/h_coal;
// Result
printf('\n Amount of coal required for energy equivalent of fission = %3.2E kg \n or %3.2f metric tons or %3.2f short tons\n',amt_coal,amt_coal/10^3,amt_coal*1.10231/10^3);
// The result is expressed in all units of commercial importance.

// 2. Oil
h_oil = 4.3*10^7;      // Heat contenet of oil in J/kg
// Calculation
amt_oil = energy_uranium/h_oil;
// Result
printf('\n Amount of oil required for energy equivalent of fission = %3.2E kg \n or %3.2f tons or %3.1f barrels\n',amt_oil,amt_oil/10^3,amt_oil*6.3/10^3);
// The result is expressed in all units of commercial importance.


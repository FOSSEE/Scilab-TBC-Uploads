clear;
clc;

// Example: 6.2
// Page: 205

printf("Example: 6.2 - Page: 205\n\n");

// Solution

// *****Data******//
density_water = 0.998;// [g/cubic cm]
density_ice = 0.9168;// [g/cubic cm]
Hf = 335;// [J/g]
T = 0 + 273;// [K]
//*****************//

V_water = 1/density_water;// [cubic cm/g]
V_ice = 1/density_ice;// [cubic cm/g]
// From Eqn. 6.56:
// dP/dT = deltaS/(V2 - V1) = deltaH/(T*(V2 - V1))
// Substituting these values in Eqn. 6.58
deltaP_By_deltaT = (Hf/(T*(V_water - V_ice)))*10;// [atm/K]
deltaT_By_deltaP = 1/deltaP_By_deltaT;// [K/atm]
if deltaT_By_deltaP > 0
    printf("Increase in pressure of 1 atm increases the freezing point by %.4f K",abs(deltaT_By_deltaP));
else
    printf("Increase in pressure of 1 atm lowers the freezing point by %.4f K",abs(deltaT_By_deltaP));
end
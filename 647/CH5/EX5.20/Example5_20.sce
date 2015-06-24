clear;
clc;

// Example: 5.20
// Page: 173

printf("Example: 5.20 - Page: 173\n\n");

// Solution

//*****Data*****//
T1_oil = 273 + 150;// [K]
T2_oil = 50 +273;// [K]
m_water = 4000;// [kg]
T1_water = 273 + 20;// [K]
T2_water = 273 + 130;// [K]
C_water = 4.185;// [kJ/kg K]
C_oil = 2.5;// [kJ/kg K]
//***************//

// For oil:
deltaT_oil = T1_oil - T2_oil;// [K]
// For water:
deltaT_water = T2_water - T1_water;// [K]
// The mass flow rate of oil can be measured by the enthalpy balance over the process:
m_oil = m_water*C_water*deltaT_water/(deltaT_oil*C_oil);// [kg]
// Change in the Entropy of oil:
deltaS_oil = m_oil*C_oil*log(T2_oil/T1_oil);// [kJ/K]
// Change in Entropy of water:
deltaS_water = m_water*C_water*log(T2_water/T1_water);// [kJ/K]
deltaS = deltaS_oil + deltaS_water;// [kJ/K]
printf("Total Entropy Change is %.2f kJ/K",deltaS);
clear;
clc;

// Example: 5.24
// Page: 182

printf("Example: 5.24 - Page: 182\n\n");

// Solution

// *****Data******//
m_oil = 4750;// [kg]
T1_oil = 515;// [K]
T2_oil = 315;// [K]
m_water = 9500;// [kg]
T1_water = 290;// [K]
Cp_oil = 3.2;// [kJ/kg K]
Cp_water = 4.185;// [kJ/kg K]
//*****************//

// From enthalpy Balance:
deff('[y] = f(T2_water)','y = m_oil*Cp_oil*(T1_oil - T2_oil) - m_water*Cp_water*(T2_water - T1_water)');
T2_water = fsolve(7,f);// [K]
// Change in the Entropy of oil:
deltaS_oil = m_oil*Cp_oil*integrate('(1/T)','T',T1_oil,T2_oil);// [kJ/K]
// Change in Entropy of water:
deltaS_water = m_water*Cp_water*integrate('(1/T)','T',T1_water,T2_water);// [kJ/K]
deltaS = deltaS_oil + deltaS_water;// [kJ/K]
printf("Total Entropy Change is %.2f kJ/K\n",deltaS);
if deltaS > 0
    printf("Since deltaS is a positive quantity, process is irreversible\n");
else
    printf("Since deltaS is a negative quantity, process is reversible\n");
end
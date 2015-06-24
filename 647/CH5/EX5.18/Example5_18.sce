clear;
clc;

// Example: 5.18
// Page: 170

printf("Example: 5.18 - Page: 170\n\n");

// Solution

//*****Data*****//
m_iron = 40;// [kg]
T1 = 625;// [K]
m_water = 160;// [kg]
T2 = 276;// [K]
C_iron = 0.45;// [kJ/kg K]
C_water = 4.185;// [kJ/kg K]
//**************//

deff('[y] = f(T)','y = m_iron*C_iron*(T1 - T) - m_water*C_water*(T - T2)');
T = fsolve(7,f);// [K]
// Change in Entropy of the iron casting can be estimated as:
deltaS1 = m_iron*C_iron*log(T/T1);// [kJ/K]
// Change in Entropy of Water is given by:
deltaS2 = m_water*C_water*log(T/T2);// [kJ/K]
deltaS = deltaS1 + deltaS2;// [kJ/K]
printf("Total Entropy Change is %.2f kJ/K",deltaS);
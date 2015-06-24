clear;
clc;

// Example: 5.24
// Page: 182

printf("Example: 5.24 - Page: 182\n\n");

// Solution

// From Example 5.18 (Pg: 170)
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
deltaS1 = m_iron*C_iron*integrate('(1/T)','T',T1,T);// [kJ/K]
// Change in Entropy of Water is given by:
deltaS2 = m_water*C_water*integrate('(1/T)','T',T2,T);// [kJ/K]
deltaS = deltaS1 + deltaS2;// [kJ/K]
// By Eqn. 5.63:
W_lost = T2 * deltaS;// [kJ]
printf("Work lost is %.2f kJ",W_lost);
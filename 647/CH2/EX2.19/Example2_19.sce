clear;
clc;

// Example: 2.19
// Page: 69

printf("Example: 2.19 - Page: 69\n\n");

// Solution

//*****Data*****//
T1 = 273;// [K]
T2 = 273 + 67;// [K]
m_dot = 20000;// [kg/h]
Ws = -1.5;// [hp]
Q = -38000;// [kJ/min]
Z = 20;// [m]
Cp = 4.2;// [kJ/kg K]
g = 9.81;// [m/second square]
//***************//

Q = Q*60/m_dot;// [kJ/kg]
Ws = Ws*0.7457*3600/m_dot;// [kJ/kg]
PE = g*Z*10^(-3);// [kJ/kg]
// KE is assumed to be negligible.
// For Steady Flow process: dE/dt = 0
// From Eqn. 2.47:
deltaH = Q - Ws - PE;// [kJ/kg]
H1 = Cp*(T2 - T1);// [kJ/kg]
H2 = H1 + deltaH;// [kJ/kg]

// Now, the temperature of the tank can be determined as:
T = (H2/Cp) + T1;// [K]
printf("Tempertaure of water in the second tank is %.2f K\n",T);
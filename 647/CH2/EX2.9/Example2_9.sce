clear;
clc;

// Example: 2.9
// Page: 48

printf("Example: 2.9 - Page: 48\n\n");

// Solution

//*****Data*****//
m_water = 1;// [kg]
Cv = 4.18;// [kJ/kg K]
m_stirrer = 40;// [kg]
h = 25;// [m]
g = 9.81;// [m/square s]
//***************//

// Since the system is thermally insulated:
// Q = 0
// From the first law of thermodynamics:
// dQ = dE + dW
// As E = U + Ek +Ep and Ek = Ep = 0
// dQ = dU + dW
dT = g*h/Cv;// [K]
printf("Rise in Temperature is %.2f K\n",dT);
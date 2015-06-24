clear;
clc;
printf("\t\t\tExample Number 10.4\n\n\n");
// calculation of heat exchanger size from known temperatures
// Example 10.4 (page no.-532-533) 
// solution

m_dot = 68;// [kg/min] water flow rate 
U = 320;// [W/square meter degree celsius] overall heat transfer coefficient
T1 = 35;// [degree celsius] initial temperature 
T2 = 75;// [degree celsius] final temperature
Toe = 110;// [degree celsius] oil entering temperature 
Tol = 75;// [degree celsius] oil leaving temperature
Cw = 4180;// [J/kg degree celsius] water specific heat capacity
// the total heat transfer is determined from the energy absorbed by the water:
q = m_dot*Cw*(T2-T1);// [J/min]
q = q/60;// [W]
// since all the fluid temperatures are known, the LMTD can be calculated by using the temperature scheme in figure 10-7b(page no.-530)
dT_m = ((Toe-Tol)-(T2-T1))/log((Toe-Tol)/(T2-T1));// [degree celsius]
// then, since  q = U*A*dT_m
A = q/(U*dT_m);// [square meter] area of heat-exchanger
printf("area of heat-exchanger is %f square meter ",A);
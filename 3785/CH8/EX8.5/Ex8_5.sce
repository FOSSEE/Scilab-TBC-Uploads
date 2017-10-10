// Example 8_5
clc;funcprot(0);
// Given data
Q=5;// The flow rate of water through a pipe in gal/min
q=10*10^3;// kW
c_p=4.18;// The specific heat in J/kg.K
rho=1*10^3;// The density of water in kg/m^3

// Calculation
Q=(Q*3.785*10^-3)/60;// The flow rate of water through a pipe in m^3/s
deltaT=q/(rho*Q*c_p*10^3);// The temperature rise in the water in K
printf("The temperature rise in the water,T_out-T_in=%1.3f K",deltaT);

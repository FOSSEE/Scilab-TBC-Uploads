// Example 7_7
clc;funcprot(0);
// Given data
mdot=3.00;// kg/min
x_in=0;// The quality of steam at inlet
x_out=75;// The quality of steam at outlet
T_in=100;// °C
h_fg=2257;// kJ/kg

// Solution
Qdot=mdot*(x_out/100)*h_fg;// kJ/min
S_T_Q=Qdot/(T_in+273.15);// kJ/min.K
printf('\nThe heat transport rate of entropy for this process,(S_T)_Q=%2.1f kJ/min.K',S_T_Q);

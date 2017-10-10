// Example 16_3
clc;funcprot(0);
// Given data
p_1=14.7;// psia
T_1=1000;// °F
V_1=1612;// ft/s
g_c=32.174;// lbm.ft/lbf.s^2

// Calculation
// Station 1
p_1=14.7;// psia
T_1=1000;// °F
h_1=1534.4;// Btu/lbm
s_1=2.1332;// Btu/lbm.R
// Station os
s_os=s_1;// Btu/lbm.R
h_os=h_1+(V_1^2/(2*g_c));// Btu/lbm
//Table C.3a, in Thermodynamic Tables to accompany Modern Engineering Thermodynamics a Mollier diagram for steam
p_os=20.0;// psia
T_os=1100;// °F
v_os=46.4;// ft^3/lbm
rho_os=1/v_os;// lbm/ft^3;
printf("\nThe isentropic stagnation temperature,T_0=%4.0f°F \nThe isentropic stagnation pressure,p_os=%2.1f psia \nThe isentropic stagnation density,rho_os=%0.3f lbm/ft^3",T_os,p_os,rho_os);

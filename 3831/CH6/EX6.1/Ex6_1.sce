// Example 6_1
clc;funcprot(0);
// Given data
V=300;// ft/s
D=6/12;// ft
R=D/2;// ft
Z=15;// ft
g=32.174;// ft/s^2
g_c=32.174;// lbm.ft/lbf.s^2

// Calculation
// From the superheated steam table, Table C.3a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find that, at 100. psia and 500.°F,
v=5.587;// ft^3/lbm
h=1279.1;// Btu/lbm
A=%pi*(3/12)^2;// ft^2
mdot=(A*V)/v;// lbm/s
ke=(V^2)/(2*g_c);// ft.lbf/lbm
ke=ke*(1/778.16);// Btu/lbm
pe=(g*Z)/g_c;// // ft.lbf/lbm
pe=pe*(1/778.16);// Btu/lbm
E_mf=-[mdot*(h+ke+pe)];// Btu/s
printf("\nThe mass flow energy transport rate of steam,E_mass flow=%1.2e Btu/s",E_mf);

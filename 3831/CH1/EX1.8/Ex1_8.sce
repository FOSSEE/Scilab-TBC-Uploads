// Example 1_8
clc;funcprot(0);
// Given data
V_ft=3000;// ft/s
m=10.0;// grams
g_c=1;// Dimensionless

// Calculation
m=m/1000;// kg
V=V_ft/3.281;// m/s
KE=(m*V_ft^2)/(2*g_c);// kJ
m=(m*2.205);// lbm
// In the Engineering English units system, we have
g_c=32.174;// lbm.ft/(lbf.s^2)
KE=(m*V_ft^2)/(2*g_c);// ft.lbf
KE=KE/778.17;// Btu
printf("\nThe translational kinetic energy of a bullet,KE=%1.2f Btu",KE)

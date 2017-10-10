// Example 1_7
clc;funcprot(0);
// Given data
W=2000;// lbf
F=W;// lbf
Z=8.00;// ft
g_c=1;// Dimensionless
g=9.81;// m/s^2

// Calculation
m=((F/0.2248)*g_c)/(g);// kg
Z=Z/3.281;// m
PE=(m*g*Z)/g_c;// kJ
// In the Engineering English units system, we have
Z=8.00;// m
g_c=32.174;// lbm.ft/lbf.s^2
g=32.174;// ft/s^2
m=(F*g_c)/g;// lbm
PE=(m*g*Z)/g_c;// ft.lbf
PE=PE/778.17;// Btu
printf("\nThe potential energy of an automobile,PE=%2.1f Btu",PE);

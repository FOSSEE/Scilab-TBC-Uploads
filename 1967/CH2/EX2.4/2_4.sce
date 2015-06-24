clc
//initialisation of variables
clear
V= 0.381 //lit
T= 313 //K
R= 0.0820 //lit-atm deg^-1 mol^-1
pc= 72.9 //atm
//CALCULATIONS
p= R*T/V
r= p/pc
//RESULTS
printf ('Pressure of carbon dioxide gas = %.1f atm',p)
printf ('\n ratio = %.3f ',r)

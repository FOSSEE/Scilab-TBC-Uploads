clc
//initialisation of variables
clear
Cp= 8.21*0.0413 //lit-atm deg^-1 mole^-1
V= 8.64*28*10^-3 //lit
r= 1.199
//CALCULATIONS
u= V*(r-1)/Cp
//RESULTS
printf ('Joule-thomson coefficient = %.3f deg atm^-1',u)

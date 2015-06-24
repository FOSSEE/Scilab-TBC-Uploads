clc
clear
//Initialization of variables
g1=150670 //kJ/kmol
g2=71500 //kJ/kmol
R=8.314
Ts=298 //K
T=700 //K
//calculationd
G=g1-g2
G2=33875 //kJ/kmol
K1=exp(-G/R/Ts)
K2=exp(-G2/R/T)
//results
printf("In case 1, equilibrium constant = %.2e",K1)
printf("\n In case 2, equilibrium constant = %.5f",K2)

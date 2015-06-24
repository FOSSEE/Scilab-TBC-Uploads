clc
//initialisation of variables
clear
p= 100 //atm
T= 25 //C
a= 1.38
b= 3.92*10^-2 //lit atm
R= 0.082 //lit-atm mole^-1 K^-1
Tc= 126 //K
Pc= 33.5 //atm
M= 81 //gms
m= 32 //gms
//CALCULATIONS
dC= a*2*p/(R*(273+T)^2)
dC1= M*R*Tc^3*p/(m*Pc*(273+T)^3)
//RESULTS
printf ('Cp-Cp* = %.3f lit atm deg^-1 mole^-1',dC)
printf ('\n Cp-Cp* = %.3f lit atm deg^-1 mole^-1',dC1)

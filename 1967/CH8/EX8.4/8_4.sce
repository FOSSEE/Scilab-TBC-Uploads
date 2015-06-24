clc
//initialisation of variables
clear
a= 1.39 //lit^2
p= 200 //atm
R= 0.082 //lit-atm /mol K
T= 298 //K
//CALCULATIONS
dC= (1+(2*a*p/(R*T)^2))
//RESULTS
printf ('Cp-Cv = %.2f *R lit-atm mole^-1 K^-1',dC)

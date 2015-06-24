clc
//initialisation of variables
clear
P= 200 //atm
Tc= 126 //k
T= 25 //C
Pc= 33.5 //atm
M= 27 //gms
m= 16 //gms
//CALCULATIONS
dC= (1+(M*Tc^3*P/(m*Pc*(273.2+T)^3)))
//RESULTS
printf ('Cp-Cv = %.2f *R cal mole^-1 K^-1',dC)

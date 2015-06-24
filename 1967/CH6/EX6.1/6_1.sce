clc
//initialisation of variables
clear
m= 5.313*10^-23 //g
k= 1.38*10^-16 
T= 298 //K
R= 82.06 //ml-atm /mol K
h= 6.624*10^-27 //J /mol
//CALCULATIONS
Qt= (2*%pi*m*k*T)^1.5*R*T/h^3
//RESULTS
printf ('Qt = %.2e ',Qt)

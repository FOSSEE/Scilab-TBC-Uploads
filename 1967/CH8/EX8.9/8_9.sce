clc
//initialisation of variables
clear
Cp= 8.21*0.0413 //lit-atm
R= 0.0821 //lit-atm deg^-1 mole^-1
p= 100 //atm
T= 20 //C
a= 1.39 
b= 3.92*10^-2 //lit-atm^2 mole
//CALCULATIONS
u= (1/Cp)*((2*a/(R*(273+T)))-b-(3*a*b*p/(R^2*(273+T)^2)))
//RESULTS
printf ('Joule-thomson coefficient = %.3f deg atm^-1',u)

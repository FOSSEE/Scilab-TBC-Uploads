clc
//initialisation of variables
clear
p= 3.66 //atm
v= 6.01 //litre mole^-1
T= 0 //C
R= 0.082 //lit-atm mole^-1 K^-1
//CALCULATIONS
f= p^2*v/(R*(273+T))
//RESULTS
printf ('fugacity of liquid chlorine = %.2f atm',f)

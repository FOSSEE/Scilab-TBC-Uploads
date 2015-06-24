clc
//Intitalisation of variables
clear
p= 795 //mm
v= 0.501 //lit
w= 1.35 //gms
m= 92 //gms
R= 0.082 //lit-atm mole^-1 K^-1
T= 45 //C
//CALCULATIONS
a= ((p/760)*v/((w/m)*R*(273+T)))-1
//RESULTS
printf ('Fraction of N2O4 dissociated into NO2 = %.3f',a)

clc
//initialisation of variables
Kp= 1.06*10^-2 //atm
a= 0.990
//CALCULATIONS
P= Kp*(1-a^2)/(4*a^2)
//RESULTS
printf (' pressure = %.2e atm',P)

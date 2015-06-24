clc
//initialisation of variables
Q= 0.0055 //ft^3/sec
h= 0.002 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Cd= (Q/h)*15/(8*sqrt(2*g))
//RESULTS
printf (' Coefficiant of discharge = %.3f ',Cd)

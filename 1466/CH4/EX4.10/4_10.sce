

clc
//initialisation of variables
clear
C= 0.62 //
d= 1 //in
g= 32.2 //ft/sec^2
D= 2 //in
h= 0.85 //ft
//CALCULATIONS
Q= C*60*(%pi/(4*144))*sqrt((2*g*h)/(1-(d/D)^4))
//RESULTS
printf (' Flow through the orifice = %.2f ft^3/min',Q)

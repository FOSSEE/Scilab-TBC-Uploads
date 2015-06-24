
clc
//initialisation of variables
clear
r= 96
T= 10.5 //C
K1= 288 //C
K2= 0.0015 //C^-1
h= 3000 //ft
P1= 14.69
//CALCULATIONS
P2= P1*10^(((1/(r*K2))*log10((K1-K2*h)/K1)))
w= P2*144/(r*(273+T))
//RESULTS
printf ('Density = %.4f lb/ft^3 ',w)

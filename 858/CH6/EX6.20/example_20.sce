clc
clear 
printf("example 6.20 page number 291\n\n")

//to find the crystal yield

M_Na2CO3 = 106
M_10H2O = 180.2
M_Na2CO3_10H2O = 286.2;
w_Na2CO3 = 5000   //in kg
%_water = 0.05   //% of water evaporated

W = %_water*w_Na2CO3;
//solving material balance, we have two equations
//equation 1 -> 0.8230L +0.6296C = 3500
//equation 2 -> 0.1769L + 0.3703C = 1250

A=[0.8230 0.6296;0.1769 0.3703]
b = [3500;1250]
x = A\b;
L = x(1);
C = x(2);
printf("L = %f kg solution",L)
printf("\n\nC = %f kg of Na2CO3.10H2O crystals",C)

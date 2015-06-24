clc
//initialisation of variables
d= 1 //in
d1= 3 //in
h= 9 //in
p= 3 //percent
g= 32.2 //ft/sec^2
s= 13.6 //gm/cm^3
a= 0.97
//CALCULATIONS
Ka= 1/(1-(d/d1)^2)
C= Ka*%pi*(d/2)^2*sqrt(2*g*(s-1))/144
C1= a*C
Q= C1*h/12
//RESULTs
printf (' flow rate = %.3f ft^3/sec ',Q)

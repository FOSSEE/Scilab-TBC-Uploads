clc
//initialisation of variables
clear
g= 32.2 //ft/sec^2
h= 4 //ft
d2= 0.16 //ft
d1= 0.3 //ft
dp= 12.6 //lbf/in^2
//CALCULATIONS
Q= (%pi/4)*sqrt(2*g*dp*h/((1/d2^4)-(1/d1^4)))
//RESULTS
printf ('Volumetric flow rate = %.2f ft^3/sec',Q)

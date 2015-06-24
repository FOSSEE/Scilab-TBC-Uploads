
clc
//initialisation of variables
f= 0.007
l= 30 //miles
Q1= 5*10^6 //gal/day
w= 6.24 //lb/ft^3
H= 500 //ft
Q2= 7*10^6 //gal/day
//CALCULATIONS
Qi= Q1/(w*24*3600)
d= (f*l*5280*Qi^2/(10*H))^0.2
Qe = Q2*Qi/Q1
x= (30-(H*10*d^5/(f*Qe^2*5280)))*(4/3)
//RESULTS
printf ('length of new pipe required = %.1f miles',x)

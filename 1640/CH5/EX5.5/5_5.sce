clc 
//initialisation of variables
Q= 400000
d= 4 //miles
h= 50 //ft
q= 40 //gallons of water
t= 8 //hr
f= 0.0075
w= 6.24 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
Q1=Q*q*0.5/(t*60*60*w)
d= (4*f*(d*5280)*Q1^2*16/(%pi^2*h*2*g))^0.2*12
//RESULTS
printf ('size of the supply = %.1f in ',d)

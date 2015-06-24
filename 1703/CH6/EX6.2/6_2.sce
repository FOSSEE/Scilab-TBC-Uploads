
clc
//initialisation of variables
g= 32.2 //ft/sec^2
f= 0.01
h= 42 //ft
l= 3200 //ft
d= 14 //in
h1= 8 //ft
l1= 1800 //ft
w= 6.24 //lb/ft^3
//CALCULATIONS
v= sqrt(2*g*h/(1+0.5+(4*f*l/(d/12))))
h2= h-h1-(v^2/(2*g))-h1-(0.5*v^2/(2*g))-(4*f*l1*v^2/(2*g*(d/12)))
Q= %pi*(d/12)^2*v*w*60/4
//RESULTS
printf ('Height of siphon above A = %.2f ft',h2)
printf ('\n Total Discharge = %.f gal/min',Q)

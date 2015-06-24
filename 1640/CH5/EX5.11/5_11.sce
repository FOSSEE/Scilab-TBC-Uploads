clc 
//initialisation of variables
d= 8 //in
l= 6000 //ft
H= 100 //ft
H1= 1000 //ft
f= 0.008
g= 32.2 //ft/sec^2
h1= 24 //ft
h2= 34 //ft 
h3= 25 //ft
w= 6.24 //lb/ft^3
//CALCULATIONS
v= sqrt(H*d*2*g/(4*f*l*12))
h= -h1+(v^2/(2*g))+h3+(4*f*H1*v^2/(2*g*(d/12)))
Q= %pi*(d/12)^2*v*3600*w/4
//RESULTS
printf ('minimum depth = %.f ft ',h)
printf ('\n Discharge = %.f gpm',Q)

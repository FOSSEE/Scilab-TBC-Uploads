clc
//initialisation of variables
u= 80 //ft/sec
n= 62
r= 1/4
v= 11 //ft^3
w= 62.3//lbf/ft^3
p= 2 //lbf/in^2
//CALCULATIONS
uw= u*n/(r*v*w)
R= v*w*(uw/u)^2
P= r^2*p/R
//RESULTS
printf (' water velocity= %.f ft/sec',uw)
printf (' \n pressure drop= %.5f lbf/in^2 per ft',P)

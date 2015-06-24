clc
//initialisation of variables
g= 32.2 //ft/sec^2
w= 62.3 //lb/ft^3
k= 3*10^5 //lbf/in^2
//CALCULATIONS
v= sqrt(k*g*144/w)
//RESULTS
printf (' velocity of sound in the fluid = %.f ft/sec',v)

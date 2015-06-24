clc
//initialisation of variables
clear
d= 4 //in
q= 0.5 //ft^3/sec
w= 62.4 //lb/ft^3
u= 2.7*10^-5 //lbf sec/ft^2
e= 0.0005 //ft
g= 32.1 //ft/sec^2
f= 0.0235
lt= 400 //ft
//CALCULATIONS
V= 4*q/(%pi*(d/12)^2)
Re= w*V*(d/12)/(u*g)
r= e/(d/12)
dz= (V^2/(2*g))*(1.7+f*lt/(d/12))
//RESULTS
printf ('mean flow velocity = %.2f ft/sec',V)
printf ('\n Reynolds number = %.2e',Re)
printf ('\n Relative roughness = %.4f',r)
printf ('\n difference in the levels of water = %.1f ft',dz)

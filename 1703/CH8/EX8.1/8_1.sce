
clc
//initialisation of variables
v= 10.01 //poise
g= 32.2 //ft/sec^2
d= 30.48 //cm
w= 453.6 //gm
//CALCULATIONS
M= v*d/w
F= M/g
//RESULTS
printf ('Pound in unit of mass = %.3f lb/ft sec absolute units',M)
printf ('\n Pound in unit of force = %.4f slugs/ft sec',F)

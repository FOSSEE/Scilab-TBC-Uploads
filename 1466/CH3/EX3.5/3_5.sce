
clc
//initialisation of variables
v= 20 //ft/sec
d= 2 //in
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CLACULATIONS
A= (%pi/4)*(d^2/144)
hp= (w*A*v^3)/(2*g*550)
//RESULTS
printf (' horse power = %.3f hp ',hp)

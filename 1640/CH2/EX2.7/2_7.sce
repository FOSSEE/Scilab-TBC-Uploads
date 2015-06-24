clc 
//initialisation of variables
h= 6.8 //in of mercury
sm= 13.6
ssw= 1.026
g= 32.2 //ft/sec^2
//CALCULATIONS
V= sqrt(2*g*h*(sm-ssw)/12)*3600/5280
//RESULTS
printf ('speed of submarine = %.1f miles per hour ',V)

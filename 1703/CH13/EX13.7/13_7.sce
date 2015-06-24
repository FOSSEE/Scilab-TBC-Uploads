
clc
//initialisation of variables
r= 0.5 //ft
N= 300
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
A= N*2*%pi/60
Ft= %pi*A^2*r^4*w/(4*g)
//RESULTS
printf ('total force = %.1f lb ',Ft)

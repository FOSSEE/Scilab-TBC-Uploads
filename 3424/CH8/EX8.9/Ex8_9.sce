clc
// Intialization of variables
Dp = 0.5*144 //lb/ft^2
l = 100//ft
d = 0.00238 //slugs/ft^3
f = 0.027
V = 66.379 //ft/s
//Calculations 
D = (f*l*d*(V^2))/(2*Dp) //ft
D1 = 0.404*(f)^0.2 // ft
// Results
printf(" the minimum diamter of the pipe is %.3f ft ",D)
printf(" \n the minimum diamter of the pipe(aliter) is %.3f ft ",D1)

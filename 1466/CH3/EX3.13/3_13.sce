
clc
//initialisation of variables
d= 10 //in
h= 3.5 //in
g= 32.2 //ft/sec^2
//CALCULATIONS
A= (%pi/4)*(d^2/144)
V= sqrt(2*g*(h/12))
vm= (2/3)*V
Q= vm*A*60
//RESULTS
printf (' Quantity flowing per minute = %.1f ft^3 ',Q)

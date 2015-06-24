
clc
//initialisation of variables
g= 32.2 //ft/sec^2
f=0.01
l= 1500 //ft
d= 6 //in
h= 96 //ft
//CALCULATIONS
v= sqrt((h*2*g)/(1+(4*f*l/(d/12))))
D= v*%pi*(d/12)^2/4
//RESULTS
printf (' discharge through the pipe = %.2f ft^3/sec',D)


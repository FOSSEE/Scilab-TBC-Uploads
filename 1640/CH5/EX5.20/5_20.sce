clc 
//initialisation of variables
d= 2 //ft
l= 1000 //ft
f= 0.0075
H1= 20 //ft
A1= 100000 //ft^2
A2= 50000 //ft^2
g= 32.2 //ft/sec^2
//CALCULATIONS
h= 2*A1/A2
H2= H1-h
t= 2*A1*A2*sqrt(1.5+(4*f*l/2))*0.47/((A1+A2)*(%pi*d^2/4)*sqrt(2*g))/60
//RESULTS
printf ('Time taken to lower the level of water = %.f min ',t)

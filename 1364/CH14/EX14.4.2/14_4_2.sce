clc
//initialisation of variables
f= 0.006
l= 2600 //ft
Q= sqrt(5040) //ft^3
g= 32.2 //ft/sec^2
hf= 57.5 //ft
//CALCULATIONS
d= ((32*f*l*Q^2)/(%pi^2*g*hf))^(1/5)*12.11
//RESULTS
printf ('diameter of the pipe= %.1f in',d)

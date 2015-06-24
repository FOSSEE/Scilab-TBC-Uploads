clc 
//initialisation of variables
l= 30 //ft
w= 15 //ft
A= 2 //sqft
H1= 5 //ft
H2= 0 //ft
Cd=0.62
g= 32.2 //ft/sec^2
//CALCULATIONS
T= 2*l*w*(sqrt(H1))/(Cd*A*sqrt(2*g))
//results
printf ('Time taken for 5 feet fall = %.1f sec',T)

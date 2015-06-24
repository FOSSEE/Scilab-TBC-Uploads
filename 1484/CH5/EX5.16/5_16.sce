clc 
//initialisation of variables
H2= 1.5 //ft
H1= 1 //ft
A= 100 //yards^2
Cd= 0.6
g= 32.2 //ft/sec^2
//CALCULATIONS
A1= A*9
T= (1.25*A1/(Cd*sqrt(2*g)))*(H1-(1/H2)^1.5)
//RESULTS
printf ('time of lowering the surface= %.1f sec',T)

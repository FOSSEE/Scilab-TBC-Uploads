clc 
//initialisation of variables
g= 32.2 //ft/sec^2
Cd= 0.6
d= 2 //in
H1= 5 //ft
//CALCULATIONS
v= sqrt(2*g*H1)/2
q= v*Cd*%pi*(d/12)^2/4
//RESULTS
printf ('Total discharge = %.3f cfs',q)

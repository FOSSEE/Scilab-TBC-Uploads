clc 
//initialisation of variables
g= 32.2 //ft/sec^2
Cd= 0.62
d= 5/4 //in
h= 9 //ft
//CALCULATIONS
T= (2/3)*%pi*(h)^(3/2)/(Cd*(%pi/4)*sqrt(2*g)*(d/12)^2)
//RESULTS
printf ('time required to lower water level= %.f secs',T)

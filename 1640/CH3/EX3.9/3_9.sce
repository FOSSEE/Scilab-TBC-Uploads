clc 
//initialisation of variables
Cd= 0.8
g= 32.2 //ft/sec^2
d= 3 //in
//CALCULATIONS
t= (60*2/(%pi*(d/12)^2*sqrt(2*g)/4*Cd))*(6-d)^(3/2)/(3*60/2)
//RESULTS
printf ('time to emptify biler = %.2f min',t)

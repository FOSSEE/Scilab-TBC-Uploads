clc 
//initialisation of variables
L= 6 //ft
H= 15 //in
Cd= 0.62
g= 32.2 //ft/sec^2
//CALCULAIONS
Q= 2*Cd*L*sqrt(2*g)*(H/12)^1.5/3
//RESULTS
printf ('Total Discharge= %.1f cuses',Q)

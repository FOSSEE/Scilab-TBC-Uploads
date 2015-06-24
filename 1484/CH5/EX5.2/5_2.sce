clc 
//initialisation of variables
o= 90 //degrees
H= 15.5 //in
Cd= 0.6
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 8*Cd*tand(o/2)*sqrt(2*g)*(H/12)^2.5/15
//RESULTS
printf ('Total Discharge= %.2f cuses',Q)

clc 
//initialisation of variables
Cd= 0.62
L= 4 //ft
g= 32.2 //ft/sec^2
H= 6 //in
o= 90 //degrees
//CALCULATIONS
Q= Cd*L*sqrt(2*g)*(H/12)^1.5*(2/3)
H1= (Q*15/(8*Cd*tand(o/2)*sqrt(2*g)))^(2/5)
//RESULTS
printf ('depth of water= %.2f ft',H1)

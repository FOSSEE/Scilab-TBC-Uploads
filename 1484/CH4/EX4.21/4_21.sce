clc 
//initialisation of variables
Cd= 0.62
H1= 6 //ft
H2= 3 //ft
H= 4 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Q1= 2*Cd*H*sqrt(2*g)*(H^1.5-H2^1.5)/3
Q2= Cd*H*(H1-H)*sqrt(2*g*H)
Q= Q1+Q2
//RESULTS
printf ('Total discharge= %.f cuses',Q)

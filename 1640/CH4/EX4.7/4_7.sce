clc 
//initialisation of variables
L= 2.5 //ft
H= 1 //ft
g= 32.2 //ft/sec^2
Cd= 0.61
L1= 1.75 //ft
L2= 2.25 //ft
//CALCULATIONS
Q1= 2*Cd*sqrt(2*g)*L*H/3
Q2= 2*Cd*sqrt(2*g)*L1*(L1^1.5-1)/3
Q3= 2*Cd*sqrt(2*g)*H*(L2^1.5-L1^1.5)/3
Q= Q1+Q2+Q3
//RESULTS
printf ('Total discharge = %.1f cfs ',Q)

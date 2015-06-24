clc 
//initialisation of variables
Cd= 0.62
L= 3 //ft
g= 32.2 //ft/sec^2
H= 1 //ft
L1= 2 //ft
h= 0.5 //ft
L2= 1 //ft
h1= 0.25 //ft
//CALCULATIONS
Q= 2*Cd*L*sqrt(2*g)*H^1.5/3
Q1=2*Cd*L1*sqrt(2*g)*((H+h)^1.5- H^1.5)/3
Q2= 2*Cd*L2*sqrt(2*g)*((H+h+h1)^1.5- (H+h)^1.5)/3
Q3= Q1+Q2+Q
//RESULTS
printf ('Total Discharge= %.2f cuses',Q3)

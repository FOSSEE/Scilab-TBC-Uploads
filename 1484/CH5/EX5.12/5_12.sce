clc 
//initialisation of variables
L= 8 //ft
d= 9 //in
h= 3 //in
Cd1= 0.62
Cd2= 0.62
g= 32.2 //ft/sec^2
//CALCULATIONS
Q1= (2/3)*Cd1*L*sqrt(2*g)*(h/12)^1.5
Q2= Cd2*L*d*sqrt(2*g*h/12)/12
Q= Q1+Q2
//RESULTS
printf ('Discharge= %.2f cuses',Q)

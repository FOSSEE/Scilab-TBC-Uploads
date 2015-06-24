clc 
//initialisation of variables
L= 50 //ft
d= 2 //ft
h= 4 //ft
Cd1= 0.58
Cd2= 0.8
g= 32.2 //ft/sec^2
//CALCULATIONS
ha= h/(2*g)
Q1= (2/3)*Cd1*L*sqrt(2*g)*((h+ha)^1.5-ha^1.5)
Q2= Cd2*L*d*sqrt(2*g*(h+ha))
Q= Q1+Q2
//RESULTS
printf ('Discharge= %.f cuses',Q)

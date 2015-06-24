clc 
//initialisation of variables
p= 60 //lb/in^2
l= 300 //ft
D= 2.5 //in
d= 7/8 //in
f= 0.018
g= 32.2 //ft/sec^2
w= 62.4 //lb/ft^3
//CALCULATIONS
r= (D/d)^4
V= sqrt(2*g*144*p/(w*(r+0.5+(4*f*l/(D/12)))))
Q= V*(%pi*(D/12)^2)/4
//RESULTS
printf ('Volume of flow = %.3f cu ft/sec ',Q)

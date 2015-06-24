
clc
//initialisation of variables
B= 3 //ft
Cd= 0.6
g= 32.2 //ft/sec^2
d1= 6 //in
d2= 4 //in
//CALCULATIONS
Q2= 0.428 //cuses
r= sqrt((((d1/12)^5)/((d2/12)^5)))
Q1= r*Q2
Q= Q1+Q2
//RESULTS
printf ('Total inflow = %.3f cuses',Q)

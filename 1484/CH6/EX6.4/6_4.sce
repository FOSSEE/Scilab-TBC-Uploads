clc 
//initialisation of variables
d1= 4 //in
d2= 3 //in
Q= 90 //gallons
k= 0.7
v= 6.24 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
V= Q/(60*6.24)
v1= V*4*d2^2/%pi
v2= V*4*d1^2/%pi
L= ((1/k)-1)^2*v2^2*900/(2*g)
//RESULTS
printf ('Loss hc= %.1f ft lbs per minute',L)

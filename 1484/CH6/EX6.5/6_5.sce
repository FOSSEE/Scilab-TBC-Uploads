clc 
//initialisation of variables
d1= 3 //in
d2= 6 //in
sm= 13.6
Q= 0.5 //ft^3/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
v1= Q*(12/d1)^2*4/%pi
v2= Q*(12/d2)^2*4/%pi
hc= (v1-v2)^2/(2*g)
h= ((v1^2-v2^2)/(2*g))-hc
h1= 12*h/(sm-1)
//RESULTS
printf ('difference in level in two limbs of mercury= %.3f in',h1)

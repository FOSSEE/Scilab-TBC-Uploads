clc 
//initialisation of variables
d1= 2 //in
l1= 25 //ft
d2= 4 //in
l2= 140 //ft
v= 4 //ft/sec
g= 32.2 //ft/sec^2
f= 0.0065
//CALCULATIONS
v1= v*(d2/d1)^2
H= (0.5*v1^2/(2*g))+(4*f*l1*12*v1^2/(d1*2*g))+((v1-v)^2/(2*g))+(4*f*l2*12*v^2/(d2*2*g))+(v^2/(2*g))
//RESULTS
printf ('necessaey height of water = %.3f ft ',H)

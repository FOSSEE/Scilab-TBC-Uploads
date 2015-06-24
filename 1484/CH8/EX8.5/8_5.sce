clc 
//initialisation of variables
d= 3 //in
v1= 80 //ft/sec
v2= 40 //ft/sec
w= 62.4 //lbs/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
vr= v1-v2
P= w*vr*v2*%pi*(d/12)^2/(g*4)
//RESULTS
printf ('normal pressure on the plate when jet strikes= %.1f lbs',P)

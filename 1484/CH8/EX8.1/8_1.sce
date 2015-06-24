
clc 
//initialisation of variables
d= 1 //in
v= 36 //ft/sec
a= 30 //degrees
w= 62.4 //lbs/ft^3
g=32.2
//CALCULATIONS
P= w*sind(a)*v^2*(%pi*(d/12)^2/4)/g
//RESULTS
printf ('Total thrust on the plate= %.2f lb wt',P)

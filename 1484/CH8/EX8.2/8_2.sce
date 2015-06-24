clc 
//initialisation of variables
a= 180 //degrees
g= 32.2 //ft/sec^2
w= 62.4 //lbs/ft^3
d= 1 //in
H= 100 //ft
u= 0.95
//CALCULATIONS
v= u*sqrt(2*g*H)
Px= w*(1-cosd(a))*(%pi*(d/12)^2/4)*v^2/g
//RESULTS
printf ('force it exerts= %.1f lb wt',Px)

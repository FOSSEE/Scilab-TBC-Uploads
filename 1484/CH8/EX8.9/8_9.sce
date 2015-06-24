clc 
//initialisation of variables
Q= 60 //ft^3/sec
v= 12 //m.p.h
A= 3 //ft^2
D= 64 //lbs/ft^3
g= 32.2 //ft/sec^2
M= 64 //lbs
//CALCULATIONS
vr= Q/A
u= v*44/30
v1= vr-u
P= M*Q*v1/g
//RESULTS
printf ('propelling force= %.1f lbs',P)

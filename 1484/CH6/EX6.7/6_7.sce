clc 
//initialisation of variables
g= 32.2 //ft/sec^2
d= 3 //in
h= 50 //ft
w= 6.24 //lb/ft^3
r= 0.5
r1= 16
r2= 9/16
r3= 0.25
r4= 40.5/256
r5= 972/256
r6= 81/256
//CALCULATIONS
v=sqrt(h*2*g/(r+r1+r2+r3+r4+r5+r6))
Q= %pi*(d/12)^2*v*60*w/4
//RESULTS
printf ('discharge in the pipeline= %.1f gal.min',Q)

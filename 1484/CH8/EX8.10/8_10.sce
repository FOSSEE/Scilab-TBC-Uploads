clc 
//initialisation of variables
vr= 20 //f/sec
u= 9 //knots
D= 64 //lbs per cubic foot
g= 32.2 //ft/sec^2
p= 40 //per cent
//CALCULATIONS
u1= u*6080/3600
v= vr-u1
P= D*2*vr*4.8/g
HP= P*u1/550
HP1= 100*HP/p
//RESULTS
printf ('cylinder H.P= %.2f H.P',HP1)

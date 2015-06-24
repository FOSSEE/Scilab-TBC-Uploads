clc 
//initialisation of variables
d= 2 //in
v1= 50 //ft/sec
v2= 20 //ft/sec
W= 62.4 //lbs/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
vr= v1-v2
P= W*vr*v1*%pi*(d/2)^2/(g*4)
W= P*v2
KE= 2*vr*v2*100/v1^2
//RESULTS
printf ('Efficiency= %.f per cent',KE)

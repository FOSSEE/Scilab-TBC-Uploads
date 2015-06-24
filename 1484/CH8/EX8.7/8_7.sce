clc 
//initialisation of variables
d= 1 //in
v= 10 //f/sec
v1= 30 //ft/sec
w= 62.4 //lbs/ft^3
a= 180 //degrees
g= 32.2 //ft/sec^2
//CALCULATIONS
A= %pi*(d/12)^2/4
vr= 80-v1
M= w*vr*A
Px= M*vr*(1-cosd(a))/g
W= Px*v1
M1= w*80*A
Px1= M1*vr*(1-cosd(a))/g
W1= Px1*v1
//RESULTS
printf ('total force when there is a single cup= %.1f ft lbs',W)
printf ('\n total force when there is a series of cups= %.1f ft lbs',W1)

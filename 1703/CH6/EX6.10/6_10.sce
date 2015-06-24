
clc
//initialisation of variables
d= 2.5 //ft
a= 45 //degrees
Q= 69 //cuses
l= 30 //ft
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
Ps= 0.25*%pi*d^2*w*l/2240
Rs= Ps*sqrt((1-cosd(a))*2)
W= Q*w/2240
v= Q*4/(%pi*d^2)
Rd= W*v*sqrt(2*(1-cosd(a)))/g
Rt= Rs+Rd
//RESULTS
printf ('total resultant thrust = %.3f tons',Rt)

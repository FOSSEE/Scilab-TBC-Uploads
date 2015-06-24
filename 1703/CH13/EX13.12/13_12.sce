clear
clc
//initialisation of variables
sp= 13.6
hm= 800 //mm
d= 3 //in
r= 1.4
R= 1385 //ft-lb/lb/C
w= 62.4 //lb/ft^3
T= 15 //C
hm1= 765 //mm
r1= 9
g= 32.2 //ft/sec^2
//CALCULATIONS
p1= hm*sp*w/304.8
r2= (273+T)*R
w1= p1/r2
k= hm/hm1
v1= sqrt((2*g*r*r2*(1-k^0.286))/((1-r)*(r1^2*k^1.43-1)))
W= v1*w1*3600*(%pi/64)
//RESULTS
printf ('Weight flowing = %.1f lb/hr ',W)

//The answer is a bit different due to rounding off error in textbook


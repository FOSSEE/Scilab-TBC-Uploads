clc
//initialisation of variables
f= 0.01
l= 100 //ft
p2= 14.7 //lbf/in^2
w2= 0.04 //lbf/ft^2
g= 32.2 //ft/sec^2
d= 1 //ft
dp= 26.2 //lbf^2/in^4
//CALCULATIONS
Q= %pi*sqrt((d*g*dp*144)/(4*f*l*p2*w2))*930/(4*178)
//RESULTS
printf ('maximum flow rate = %.f ft^3/min',Q-3)

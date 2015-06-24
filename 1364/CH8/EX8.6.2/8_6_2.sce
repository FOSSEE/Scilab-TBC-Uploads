clc
//initialisation of variables
W= 50 //tonf
v= 0.1 //lb/ft sec
d= 8//in
g= 32.2 //ft/sec^2
r= 0.01
//CALCULATIONS
Q= 4*W*2240*g*12*(r/d)^3/(3*%pi*v*(d/12))
//RESULTS
printf (' rate = %.3f in/sec',Q)

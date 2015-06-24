
clc 
//initialisation of variables
h= 10 //ft
l= 50 //ft
d= 1 //in
lm= 5 //in
f= 0.01
sm= 13.6
g=32.2
//CALCULATIONS
ps= sm*lm/12
v= sqrt((ps+h)*2*g*(d/12)/(4*f*l))
Q= v*%pi*(d/12)^2/4
//RESULTS
printf ('Discharge through the pipe= %.3f cuses',Q)

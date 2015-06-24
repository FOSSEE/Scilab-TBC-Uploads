
clc 
//initialisation of variables
l= 6000 //ft
d= 9 //in
s= 1/100
h= 20 //ft
h1= 5 //ft
f= 0.006
g= 32.2 //ft/sec^2
//CALCULATIONS
L= l*s
v= sqrt((h+L-h1)*(d/12)*2*g/(4*f*l))
Q= v*%pi*(d/12)^2/4
s1= (L+h-h1)/l
//RESULTS
printf ('Discharge through the pipe= %.3f cuses',Q)
printf ('\n slope of hydraulic gradient= %.4f ',s1)

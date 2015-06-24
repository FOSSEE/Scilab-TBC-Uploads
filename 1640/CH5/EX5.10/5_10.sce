clc 
//initialisation of variables
pb= 20 //lb/in^2
w= 62.4 //lb/ft^3
Q= 1.96 //cfs
d1= 0.5 //ft
d2= 1 //ft
f= 0.005
g= 32.2 //ft/sec^2
l1= 300 //ft
H= 14.015 //ft of water
//CALCULATIONS
v1= Q/(%pi*d1^2/4)
v2= Q/(%pi*d2^2/4)
hf1= 4*f*l1*v1^2/(2*g*d1)
hf2= 4*f*l1*v2^2/(2*g*d2)
h= (v1-v2)^2/(2*g)
h1= v1^2/(2*g)
h2= v2^2/(2*g)
P= H*w/144
//RESULTS
printf ('Loss of head at C = %.3f ft ',h)
printf ('\n Loss of head at C = %.2f ft ',h1)
printf ('\n Loss of head at C = %.3f ft ',h2)
printf ('\n Pressure differnece at discharge end = %.2f lb/in^2 ',P)


clc 
//initialisation of variables
Q= 360 //cfs
d1= 1 //ft
B= 18 //ft
g= 32.2 //ft/sec^2
w1= 624. //lb/ft^3
d2=4.5  //ft
//CALCULATIONS
w= Q/B
v1= w/d1
v2= v1/d2
d2= -0.5+sqrt((2*v1^2*d1/(g))+(d1^2/4))
El= (d1+(w^2/(2*g)))-(d2+(v2^2/(2*g)))
EL= w1*Q*El
//RESULTS
printf ('loss in energy = %.f lb ',EL)

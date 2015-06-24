clc 
//initialisation of variables
h1= 8 //ft
b1= 32 //ft
h= 1 //ft
b2= 24 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
H= h1-h
Q= 3.09*H^1.5*b2
v1= Q/(b1*h1)
Q1= 3.09*(H+(v1^2/(2*g)))^1.5*b2
hc= (Q1^2/(g*b2^2))^(1/3)
d2= -(hc/2)+sqrt(9*hc^2/2)+h
//RESULTS
printf ('Q = %.f cfs ',Q1)
printf ('\n hc = %.2f ft ',hc)
printf ('\n max depth = %.2f ft ',d2)

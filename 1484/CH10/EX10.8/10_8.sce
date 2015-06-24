clc 
//initialisation of variables
d= 1 //ft
l= 2000 //ft
f= 0.038
g= 32.2 ///ft/sec^2
Q= 6 //cuses
l1= 1500 //ft
r= 2
//CALCULATIONS
v= 4*Q/(d^2*%pi)
hf= 4*f*l*v^2/(2*g)
v1= sqrt(hf*2*g/(4*f*l1+4*f*(l-l1)*r^2))
v3= r*v1
Q1= %pi*d^2*v3/4
Q2= %pi*d^2*v1/4
r1= Q2/Q1
//RESULTS
printf ('proportion of the quantity folwing in the bypass to the whole pass= %.1f ',r1)

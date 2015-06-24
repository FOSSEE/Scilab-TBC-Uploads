
clc 
//initialisation of variables
p1= 40 //percent
p2= 35 //percent
dh= 200 //ft
f= 0.1
g= 32.2 //ft/sec^2
l= 2000 //ft
d= 1 //ft
//CALCULATIONS
hf1= p1*dh/100
hf2= p2*dh/100
hf3= (100-p1-p2)*dh/100
hft= hf1+hf2+hf3
v1= sqrt(2*g*hf1/(4*f*l))
Q= v1*%pi*d^2/4
d2= (Q*7*sqrt(3/(5*g)))^(2/3)
v3= Q*4*(4/3)^2/%pi
l3= hf2*2*g*(3/4)/(4*f*v3^2)
//RESULTS
printf ('proportion of the quantity folwing in the bypass to the whole pass= %.f ft',l3)

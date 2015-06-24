clear
clc
//initialisation of variables
l= 5000 //ft
l1= 2000 //ft
d= 12 //in
f= 0.005
d1= 24 //in
f1= 0.0045
l2= 3000 //ft
Q= 1800 //gal/min
w= 6.24 //lb/ft^3
g=32.2 //ft/s^2
//CALCULATIONS
F= Q/(60*w)
v1= F*4/(%pi*(d/12)^2)
v2= v1/(d1/d)^2
H= (f*l1*F^2/(10*(d/12)^5))+(f1*l2*F^2/(10*(d1/12)^5))+(v1^2/(4*g))+((v1-v2)^2/(2*g))+(v2^2/(2*g))
//RESULTS
printf ('Available Head = %.2f ft',H)

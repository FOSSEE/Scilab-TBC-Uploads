clc
//initialisation of variables
d=2 //in
h= 6 //ft
H= 26 //ft
g= 32.2 //ft/sec^2
R= 6
//CALCULATIONS
v2= sqrt(2*g*(H+h))
Q= %pi*(d/12)^2*v2/4
v3= sqrt(2*g*h)
r= v2/v3
d3= sqrt(r*d^2)
v4= sqrt(v2^2/R)
d4= sqrt(d^2*(v2/v4))
//RESULTS
printf ('diameter = %.2f in',d4)


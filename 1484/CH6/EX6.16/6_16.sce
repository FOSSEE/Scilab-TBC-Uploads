clc 
//initialisation of variables
g= 32.2 //ft/sec^2
l= 1000 //ft
dh= 40 //ft
d= 6 //in
h= 15 //ft
h1= 300 //ft
f= 0.002
//CALCULATIONS
v= sqrt(dh*2*g/(1.5+(4*f*l/(d/12))))
Q= v*%pi*(d/12)^2/4
r= -(h+(v^2/(2*g))*(1.5+(4*f*h1/(d/12))))
//RESULTS
printf ('pbyw= %.1f ft',r) 

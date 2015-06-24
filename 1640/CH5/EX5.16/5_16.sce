clc 
//initialisation of variables
d= 2 //ft
l= 5280 //ft
f= 0.01
H= 100 //ft
g= 32.2 //ft/sec^2
//CALCLATIONS
v= sqrt(H*2*d*g/(4*f*l))
Q= %pi*d^2*v/4
r= d
v2= sqrt(H/((r^2+1)*(4*f*l/(2*2*2*g))))
Q1= 2*%pi*d^2*v2/4
dQ= Q1-Q
p= dQ*100/Q
//RESULTS
printf ('percentage increase in discharge = %.1f per cent ',p)

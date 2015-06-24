clc
//initialisation of variables
w= 62.4 //lbf/ft^3
d= 2 //in
V= 50 //ft/sec
V1= 40 //ft/sec
//CALCULATIONS
Fa= w*(%pi/4)*d^2*V^2/(144*32.2)
r= (V1/V)^2
Fb= r*Fa
//RESULTS
printf (' force exerted = %.1f lbf',Fa)
printf (' \n force exerted = %.1f lbf',Fb)

clc
//initialisation of variables
S= 0.91
g= 32.2 //ft/sec^2
P1= 1000 //psi
Q= 500 //gpm
d= 3 //in
d1= 1 //in
//CALCULATIONS
v1= Q*4/(3.12*%pi*d^2)
v2= Q*4/(%pi*d1^2*3.12)
P2= ((P1*2.31/S)+(v1^2/(2*g))-(v2^2/(2*g)))*(S/2.31)
//RESULTS
printf ('pressure = %.f psi',P2-1)

clc
//initialisation of variables
Q= 1000 //gpm
d= 2 //in
V= 0.30 //N
L= 500 //ft
f= 0.034
S= 0.85
g= 32.2 //ft/sec^2
//CALCULATIONS
v= Q*4/(%pi*3.12*d^2)
Nr= (12*v*d)/V
h= 2.598*S*f*L*v^2/(2*g)
//RESULTS
printf ('Pressure drop = %.f psi',h+5)

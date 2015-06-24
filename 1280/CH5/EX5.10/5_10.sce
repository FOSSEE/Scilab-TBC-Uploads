clc
//initialisation of variables
Q= 200 //gpm
d= 2 //in
S= 0.91
f= 0.05
L= 800 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
v= Q*4/(%pi*3.12*d^2)
h= 2.598*S*f*L*v^2/(2*g)
//RESULTS
printf ('Pressure drop = %.f psi',h)

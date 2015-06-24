clc
//initialisation of variables
Q= 15 //gpm
d= 1 //in
s= 0.85
v= 0.08 //N
L= 400 //ft
//CALCULATIONS
V= Q*4/(%pi*d^2*3.12)
Nr= 12*V*2*d/v
h= .43*s*v*L*V/d^2
//RESULTS
printf ('Pressure drop = %.2f psi',h)

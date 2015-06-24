clc
//initialisation of variables
V= 650 //cfm
Cr= 250 //psi
d= 2 //in
L= 500 //ft
//CALCULATIONS
CR= (Cr+14.7)/14.7
pf= 0.1025*L*(V/60)^2/(CR*d^(5.31))
//RESULTS
printf ('Pressure drop = %.f psi',pf-1)

clc
//initialisation of variables
L= 12 //ft
Po= 100 //kips
e= 2 //ft
ys= 42000 //psi
A= 11.77 //in^2
rmin= 195 //in
Zmin= 11.0 //in^3
lbyr= 74.2
stress= 18 //ksi
//CALCULATIONS
P= (stress-(Po/A)/((1/A)+((e*12)/Zmin)))
//RESULTS
printf ('Additional Load= %.2f kips ',P)

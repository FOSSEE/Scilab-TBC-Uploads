clc
//initialisation of variables
w= 62.4 //lb/ft^3
d= 4 //in
D= 0.0765 //lb/ft^3
Da= 8 //in
vw= 1/13
nw= 20
va= 13 //ft/sec
//CALCULATIONS
na= nw*va*d^2/Da^2
//RESULTS
printf ('power = %.f r.p.m ',na)

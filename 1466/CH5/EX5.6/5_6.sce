

clc
//initialisation of variables
H= 0.5 //ft
h= 6 //m
l= 4 //m
g=32.2
//CLACULATIONS
m= 0.405+(0.00984/H)
D= m*sqrt(2*g)*l*H^1.5
//RESULTS
printf (' Discharge using bazins formula = %.2f ft^3/sec',D)

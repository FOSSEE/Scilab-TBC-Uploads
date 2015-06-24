clc
//initialisation of variables
w= 180 //lb/ft
l= 8 //ft
P= 1200 //lb
b= 6 //ft
E= 3*10^6
I= 64 //in^4
//CALCULATIONS
delta= ((w*l^4)/(8))+((P*b^2)*(3*l-b)/(6))
//RESULTS
printf ('deflection of the free end= %.1fbyEI ft',delta)
